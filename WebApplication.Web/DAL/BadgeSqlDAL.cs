using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class BadgeSqlDAL : IBadgeSqlDAL
    {
        /// <summary>
        /// The connection string used to accss the database.
        /// </summary>
        private readonly string connectionString;

        public BadgeSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        /// <summary>
        /// The method that determines if a user has earned a particular badge
        /// </summary>
        /// <param name="userId">The id of the user to check</param>
        public void GiveUserBadges(int userId)
        {
            List<Location> locations = GetAllLocations();


            // The key represents a location, and the value is the number of times that a user has visited a location.
            Dictionary<int, int> checkInCount = GetVisitCount(userId, locations);

        }

        /// <summary>
        /// Gets all the locations in the database
        /// </summary>
        /// <returns>A list of all the categories that</returns>
        private List<Location> GetAllLocations()
        {
            List<Location> allLocations = new List<Location>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL that is used to get all the locations
                    string sql = $@"SELECT * FROM locations;";

                    SqlCommand command = new SqlCommand(sql, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        allLocations.Add(MapRowtoLocation(reader));
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return allLocations;
        }

        /// <summary>
        /// Get a count of how many times a user has checked in at a location
        /// </summary>
        /// <param name="userId">The id of the user</param>
        /// <returns>A dictionary the key represents a location, and the value is the number of times that a user has visited a location.</returns>
        private Dictionary<int, int> GetVisitCount(int userId, List<Location> locations)
        {
            Dictionary<int, int> checkInCount = new Dictionary<int, int>();

            foreach (Location location in locations)
            {
                checkInCount[location.Id] = 0;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // The sql that is used to get the number of times that a user has checked in at a particular location
                    string sql = $@"SELECT check_ins.location_id, COUNT(check_ins.location_id) AS number_of_check_ins FROM check_ins
                                    WHERE @userId = check_ins.user_id
                                    GROUP BY check_ins.location_id;";

                    SqlCommand command = new SqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@userId", userId);

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        for (int i = 1; i <= locations.Count; i++)
                        {
                            if (i == Convert.ToInt32(reader["location_id"]))
                            {
                                checkInCount[i] = Convert.ToInt32(reader["number_of_check_ins"]);
                            }
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return checkInCount;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public IList<Badge> GetUserBadges(int userId)
        {
            IList<Badge> badges = new List<Badge>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // The Sql used to get all badges that a user has earned.
                    string sql = $@"SELECT * FROM users
                                    INNER JOIN user_badges ON users.id = user_badges.user_id
                                    INNER JOIN badges ON badges.id = user_badges.badge_id
                                    WHERE @userId = user_badges.user_id;";

                    SqlCommand command = new SqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@userId", userId);

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        badges.Add(MapRowToBadge(reader));
                    }

                }
            }
            catch (Sqlexception ex)
            {
                throw ex;
            }

            return badges;
        }

        /// <summary>
        /// Maps a row from the database to a badge object
        /// </summary>
        /// <param name="reader">The reader that is being used to access the database.</param>
        /// <returns>Badge object with properties that correspond to that row in the database.</returns>
        private Badge MapRowToBadge(SqlDataReader reader)
        {
            Badge badge = new Badge
            {
                Id = Convert.ToInt32(reader["badge_id"]),
                BadgeName = Convert.ToString(reader["name"]),
                BadgeDescription = Convert.ToString(reader["description"]),
                Image = Convert.ToString(reader["image"])
            };

            return badge;
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

            CategorySqlDAL categoryDAL = new CategorySqlDAL(connectionString);

            location.Categories = categoryDAL.GetCategoriesForLocation(location.Id);

            return location;
        }
    }
}
