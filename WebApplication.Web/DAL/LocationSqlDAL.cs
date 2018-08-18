using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class LocationSqlDAL : ILocationDAL
    {
        /// <summary>
        /// The connection string for the database.
        /// </summary>
        private readonly string connectionString;
        /// <summary>
        /// Constructor that injects the connection string.
        /// </summary>
        /// <param name="connectionString">The connection string for the data source</param>
        public LocationSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        /// <summary>
        /// Gets all the 5 closest locations that are within a set distance of the user.
        /// </summary>
        /// <param name="latitude">The latitude of the user's location.</param>
        /// <param name="longitude">The longitude of the user's location</param>
        /// <param name="maxDistance">The max dstnace form the user in miles. </param>
        /// <returns>A list of the 5 closest locations within 1 mile</returns>
        public IList<Location> GetNearbyLocations(decimal latitude, decimal longitude, double maxDistance)
        {
            IList<Location> nearbyLocations = new List<Location>();
            
           // In order to prevent a huge amount of calculations on the server, the distnace is squared. 
           // The formula used technically returs the distance squared, so you need to square the max distance
           // so that the calculation is performed correctly.
            maxDistance = Math.Pow(maxDistance, 2);

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // The SQL query that is used to get all the locations that are near the user locations. 
                    // The inner query gets all the table data and the distance from the user.
                    // The outer query get all the rows where the distance is less than maxdistance
                    string sql = "SELECT TOP 5 * FROM(SELECT id, name, streetAddy, city, state, zip, latitude, longitude, photo, description, url, facebook, twitter, POWER(69.1 * (latitude - @userLatitude), 2) + POWER(69.1 * (@userLongitude - longitude) * COS(latitude / 57.3), 2) AS distance FROM locations) AS nearby WHERE distance < @maxDistance ORDER BY distance; ";

                    SqlCommand command = new SqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@userLatitude", latitude);
                    command.Parameters.AddWithValue("@userLongitude", longitude);
                    command.Parameters.AddWithValue("@maxDistance", maxDistance);

                    SqlDataReader reader = command.ExecuteReader();

                    while(reader.Read())
                    {
                        nearbyLocations.Add(MapRowtoLocation(reader));
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return nearbyLocations;
        }

        /// <summary>
        /// Gets the N closest locations that are within a set distance of the user.
        /// </summary>
        /// <param name="latitude">The latitude of the user's location.</param>
        /// <param name="longitude">The longitude of the user's location</param>
        /// <param name="maxDistance">The max distance from the user in miles. </param>
        /// <param name="numberOfLocations">The number of locations to return within the set distance.</param>
        /// <returns>A list of the 5 closest locations within 1 mile</returns>
        public IList<Location> GetNearbyNLocations(decimal latitude, decimal longitude, double maxDistance, int numberOfLocations)
        {
            IList<Location> nearbyLocations = new List<Location>();

            // In order to prevent a huge amount of calculations on the server, the distnace is squared. 
            // The formula used technically returns the distance squared, so you need to square the max distance
            // so that the calculation is performed correctly.
            maxDistance = Math.Pow(maxDistance, 2);

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // The SQL query that is used to get all the locations that are near the user locations. 
                    // The inner query gets all the table data and the distance from the user.
                    // The outer query get all the rows where the distance is less than maxdistance
                    string sql = "SELECT TOP (@numberOfLocations) * FROM(SELECT id, name, streetAddy, city, state, zip, latitude, longitude, photo, description, url, facebook, twitter, POWER(69.1 * (latitude - @userLatitude), 2) + POWER(69.1 * (@userLongitude - longitude) * COS(latitude / 57.3), 2) AS distance FROM locations) AS nearby WHERE distance < @maxDistance ORDER BY distance;";

                    SqlCommand command = new SqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@userLatitude", latitude);
                    command.Parameters.AddWithValue("@userLongitude", longitude);
                    command.Parameters.AddWithValue("@maxDistance", maxDistance);
                    command.Parameters.AddWithValue("@numberOfLocations", numberOfLocations);

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        nearbyLocations.Add(MapRowtoLocation(reader));
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return nearbyLocations;
        }

        /// <summary>
        /// Get the information about a location using the id of the location in the database. 
        /// </summary>
        /// <param name="id">The id of the location in the database to return the information for.</param>
        /// <returns>A location object with the information corresponding to the information in the database.</returns>
		public Location GetLocationById(int id)
		{
			Location location = new Location();
			try
			{
				using (SqlConnection connection = new SqlConnection(connectionString))
				{
					connection.Open();

					// The SQL query that is used to get all the locations that are near the user locations. 
					// The inner query gets all the table data and the distance from the user.
					// The outer query get all the rows where the distance is < maxdistnace
					string sql = "SELECT * FROM locations WHERE id = @id;";

					SqlCommand command = new SqlCommand(sql, connection);
					command.Parameters.AddWithValue("@id", id);

					SqlDataReader reader = command.ExecuteReader();

					while (reader.Read())
					{
						location = MapRowtoLocation(reader);
					}
				}
			}
			catch (SqlException ex)
			{
				throw ex;
			}

			return location;
		}

        /// <summary>
        /// Maps the rows in the database to a location object.
        /// </summary>
        /// <param name="reader">The reader that is being used to map the info in the database to the location object.</param>
        /// <returns>A location object that has all the properties in the row.</returns>
        private Location MapRowtoLocation(SqlDataReader reader)
        {
			Location location = new Location
			{
				Id = Convert.ToInt32(reader["id"]),
				Name = Convert.ToString(reader["name"]),
				Address = Convert.ToString(reader["streetAddy"]),
				City = Convert.ToString(reader["city"]),
				State = Convert.ToString(reader["state"]),
				Zip = Convert.ToString(reader["zip"]),
				Latitude = Convert.ToDecimal(reader["latitude"]),
				Longitude = Convert.ToDecimal(reader["longitude"]),
				Photo = Convert.ToString(reader["photo"]),
				Description = Convert.ToString(reader["description"])
			};

			return location;
        }
    }
}
