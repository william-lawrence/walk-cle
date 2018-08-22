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

                }
            }
            catch (Sqlexception ex)
            {
                throw ex;
            }

            return badges;
        }
    }

}
