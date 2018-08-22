using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
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

            };
        }
    }

}
