﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
                    connection.Open();

                    // The sql string used to get all locations and times where a user checked in
                    string sql = $@"SELECT * FROM check_ins 
                                    INNER JOIN locations on locations.id = check_ins.location_id
                                    WHERE @userId = check_ins.user_id;";

                    SqlCommand command = new SqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@userId", userId);

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        checkins.Add(MapRowToCheckin(reader));
                    }

                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }

            return checkins;
        }

        /// <summary>
        /// Maps a row from the database to a chckin object.
        /// </summary>
        /// <param name="reader">The reader used to access the database</param>
        /// <returns>Checkin object with properties corressponding to that row in the database.</returns>
        private Checkin MapRowToCheckin(SqlDataReader reader)
        {
            Checkin checkin = new Checkin();

            checkin.Date = Convert.ToDateTime(reader["date"]);
            checkin.Location.Id = Convert.ToInt32(reader["id"]);
            checkin.Location.Name = Convert.ToString(reader["name"]);
            checkin.Location.Address = Convert.ToString(reader["streetAddy"]);
            checkin.Location.City = Convert.ToString(reader["city"]);
            checkin.Location.State = Convert.ToString(reader["state"]);
            checkin.Location.Zip = Convert.ToString(reader["zip"]);
            checkin.Location.Latitude = Convert.ToDecimal(reader["latitude"]);
            checkin.Location.Longitude = Convert.ToDecimal(reader["longitude"]);
            checkin.Location.Photo = Convert.ToString(reader["photo"]);
            checkin.Location.Description = Convert.ToString(reader["description"]);

            return checkin;
        }
    }
}
