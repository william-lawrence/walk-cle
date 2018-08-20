using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class CategorySqlDAL : ICategorySqlDAL
    {
		/// <summary>
		/// The connection string for the database.
		/// </summary>
		private readonly string connectionString;

		public CategorySqlDAL(string connectionString)
		{
			this.connectionString = connectionString;
		}

		/// <summary>
		/// Gets categories for specific location.
		/// </summary>
		/// <param name="locationId">The id of the location in the database.</param>
		/// <returns>A list of catagories that the location falls under.</returns>
		public IList<string> GetCategoriesForLocation(int locationId)
		{
			IList<string> categoryNames = new List<string>();

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					string sql = "SELECT category FROM locations_categories WHERE location_id = @locationId;";
					SqlCommand command = new SqlCommand(sql, conn);
                    command.Parameters.AddWithValue("@locationId", locationId);

					SqlDataReader reader = command.ExecuteReader();

					while (reader.Read())
					{
						categoryNames.Add(Convert.ToString(reader["category"]));
					}
				}
			}
			catch (SqlException ex)
			{
				throw ex;
			}

			return categoryNames;
		}

		/// <summary>
		/// Gets all locations with that fall under a particular category.
		/// </summary>
		/// <param name="category">The category that you are searching by</param>
		/// <returns>A list of all the locations that have a particular catagory.</returns>
		public IList<Location> CategorySearch(string category)
		{
			IList<Location> locationsByCategory = new List<Location>();

			try
			{
				using (SqlConnection connection = new SqlConnection(connectionString))
				{
					connection.Open();

					// The SQL query that is used to get all the locations that are tagged with the specified category
					string sql = $@"SELECT * FROM locations 
								INNER JOIN locations_categories on locations.id = locations_categories.location_id 
								WHERE locations_categories.category = @category;";
					SqlCommand command = new SqlCommand(sql, connection);
					command.Parameters.AddWithValue("@category", category);

					SqlDataReader reader = command.ExecuteReader();

					while (reader.Read())
					{
						locationsByCategory.Add(MapRowtoLocation(reader, category));
					}
				}
			}
			catch (SqlException ex)
			{
				throw ex;
			}

			return locationsByCategory;
		}

		/// <summary>
		/// Maps the row from a database to the a location object
		/// </summary>
		/// <param name="reader">The reader that is being used to map the info in the database to the location object.</param>
		/// <returns>A location object with the data from the database.</returns>
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

		private Location MapRowtoLocation(SqlDataReader reader, string category)
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
				Description = Convert.ToString(reader["description"]),
				Categories = new List<string>()
			};

			location.Categories.Add(category);

			return location;
		}
	}
}
