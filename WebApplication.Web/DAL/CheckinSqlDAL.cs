using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class CheckinSqlDAL : ICheckinSqlDAL
    {
        /// <summary>
        /// The connection string used to accss the database.
        /// </summary>
        private readonly string connectionString;

        public CheckinSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IList<Checkin> GetUserCheckins(int userId)
        {
            IList<Checkin> checkins = new List<Checkin>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return checkins;
        }
    }
}
