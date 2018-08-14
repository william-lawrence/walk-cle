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

        public LocationSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        /// <summary>
        /// Gets all the locations that are within a set distance of the user.
        /// </summary>
        /// <param name="userLocation">The location of the user. Requires latitude and longitude.</param>
        /// <param name="maxDistance">The max dstnace form the user in miles. </param>
        /// <returns></returns>
        public IList<Location> GetNeabyLocations(decimal latitude, decimal longitude, double maxDistance)
        {
            IList<Location> nearbyLocations = new List<Location>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // The SQL query that is used to get all the locations that are near a certain locations
                    string sql = "SELECT latitude, longitude, POWER(69.1 * (latitude - @userLatitude), 2) + POWER(69.1 * (@userLongitude - longitude) * COS(latitude / 57.3), 2) AS distance FROM TableName HAVING distance < @maxDistance ORDER BY distance; ";

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
        /// 
        /// </summary>
        /// <param name="reader">The reader that is being used to map the info in the database to the location object.</param>
        /// <returns></returns>
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
