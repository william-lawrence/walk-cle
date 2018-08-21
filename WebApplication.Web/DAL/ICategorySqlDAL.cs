using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public interface ICategorySqlDAL
    {
        /// <summary>
        /// Gets categories for specific location.
        /// </summary>
        /// <param name="locationId">The id of the location in the database.</param>
        /// <returns>A list of catagories that the location falls under.</returns>
		IList<string> GetCategoriesForLocation(int locationId);

        /// <summary>
        /// Gets all locations with that fall under a particular category.
        /// </summary>
        /// <param name="category">The category that you are searching by</param>
        /// <returns>A list of all the locations that have a particular catagory.</returns>
		IList<Location> CategorySearch(decimal latitude, decimal longitude, string category);
    }
}
