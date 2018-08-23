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

		public IList<Badge> GetAllBadges()
		{
			List<Badge> badges = new List<Badge>();

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					string sql = "SELECT * FROM badges;";

					SqlCommand cmd = new SqlCommand(sql, conn);
					SqlDataReader reader = cmd.ExecuteReader();

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
		/// The method that determines if a user has earned a particular badge
		/// </summary>
		/// <param name="userId">The id of the user to check</param>
		public void GiveUserBadges(int userId)
		{
			List<Location> locations = GetAllLocations();

			// The key represents a location, and the value is the number of times that a user has visited a location.
			Dictionary<int, int> checkInCount = GetVisitCount(userId, locations);

			if (TeamPlayer(checkInCount))
			{
				//AddBadgeToUser_Badges(int userId, int badgeId)
				AddBadgeToUserBadges(userId, 1);
			}

			if (Namaste(checkInCount))
			{
				AddBadgeToUserBadges(userId, 2);
			}

			if (OhFudge(checkInCount))
			{
				AddBadgeToUserBadges(userId, 3);
			}

			if (SpookSeeker(checkInCount))
			{
				AddBadgeToUserBadges(userId, 4);
			}

			if (CLEGram(checkInCount))
			{
				AddBadgeToUserBadges(userId, 5);
			}

			if (Treehugger(checkInCount))
			{
				AddBadgeToUserBadges(userId, 6);
			}

			if (BarHopper(checkInCount, locations))
			{
				AddBadgeToUserBadges(userId, 7);
			}

			if (PatronOfTheArts(checkInCount))
			{
				AddBadgeToUserBadges(userId, 8);
			}

			if (SwimminWithFishes(checkInCount))
			{
				AddBadgeToUserBadges(userId, 9);
			}

			if (FitnessFanatic(checkInCount))
			{
				AddBadgeToUserBadges(userId, 10);
			}

			if (Elevated(checkInCount))
			{
				AddBadgeToUserBadges(userId, 11);
			}

			if (Shopaholic(checkInCount, locations))
			{
				AddBadgeToUserBadges(userId, 12);
			}

			if (ClevelandRocks(checkInCount))
			{
				AddBadgeToUserBadges(userId, 13);
			}

			if (CleNewbie(checkInCount))
			{
				AddBadgeToUserBadges(userId, 14);
			}

			if (DefenderOfTheLand(checkInCount))
			{
				AddBadgeToUserBadges(userId, 15);
			}

			if (StuckInARut(checkInCount))
			{
				AddBadgeToUserBadges(userId, 16);
			}
		}

        private void AddBadgeToUserBadges(int userId, int badgeId)
		{
			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					string sql = "SELECT * FROM user_badges WHERE user_id = @userId AND badge_id = @badgeId;";
					SqlCommand cmd = new SqlCommand(sql, conn);
					cmd.Parameters.AddWithValue("@userId", userId);
					cmd.Parameters.AddWithValue("@badgeId", badgeId);

					SqlDataReader reader = cmd.ExecuteReader();

					if (reader.HasRows)
					{
						reader.Close();
						return;
					}
					else
					{
						reader.Close();
						sql = "INSERT INTO user_badges (user_id, badge_id) VALUES (@userId, @badgeId);";
						cmd = new SqlCommand(sql, conn);
						cmd.Parameters.AddWithValue("@userId", userId);
						cmd.Parameters.AddWithValue("@badgeId", badgeId);

						cmd.ExecuteNonQuery();
					}
				}
			}
			catch (SqlException ex)
			{
				throw ex;
			}
		}

        #region Badge Logic

        private bool TeamPlayer(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[25] > 0 && checkInCount[1] > 0 && checkInCount[2] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool Namaste(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[53] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool OhFudge(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[23] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool SpookSeeker(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[24] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool CLEGram(Dictionary<int, int> checkInCount)
		{
			for (int i = 49; i < 53; i++)
			{
				if (checkInCount[i] <= 0)
				{
					return false;
				}
			}

			return true;
		}

		private bool Treehugger(Dictionary<int, int> checkInCount)
		{
			for (int i = 19; i < 23; i++)
			{
				if (checkInCount[i] <= 0)
				{
					return false;
				}
			}

			return true;
		}

		private bool BarHopper(Dictionary<int, int> checkInCount, List<Location> locations)
		{
			int counter = 0;

			foreach (var location in locations)
			{
				if (location.Categories.Contains("bars"))
				{
					if (checkInCount[location.Id] > 0)
					{
						counter++;
					}
				}
			}

			if (counter >= 5)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool PatronOfTheArts(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[15] > 0 && checkInCount[16] > 0 && checkInCount[34] > 0 && checkInCount[40] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool SwimminWithFishes(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[5] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool FitnessFanatic(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[45] > 0 && checkInCount[46] > 0 && checkInCount[53] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool Elevated(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[54] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool Shopaholic(Dictionary<int, int> checkInCount, List<Location> locations)
		{
			foreach (var location in locations)
			{
				if (location.Categories.Contains("shopping"))
				{
					if (checkInCount[location.Id] <= 0)
					{
						return false;
					}
				}
			}

			return true;
		}

		private bool ClevelandRocks(Dictionary<int, int> checkInCount)
		{
			if (checkInCount[18] > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool CleNewbie(Dictionary<int, int> checkInCount)
		{
			if (checkInCount.Count == 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		private bool DefenderOfTheLand(Dictionary<int, int> checkInCount)
		{
			foreach (var location in checkInCount)
			{
				if (location.Value <= 0)
				{
					return false;
				}
			}
			
			return true;
		}

		private bool StuckInARut(Dictionary<int, int> checkInCount)
		{
			foreach (var location in checkInCount)
			{
				if (location.Value >= 5)
				{
					return true;
				}
			}

			return false;
		}

        #endregion


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
				Id = Convert.ToInt32(reader["id"]),
				BadgeName = Convert.ToString(reader["name"]),
				BadgeDescription = Convert.ToString(reader["description"]),
				BadgeCriteria = Convert.ToString(reader["criteria"]),
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
