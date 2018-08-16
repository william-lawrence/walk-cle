using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public interface ILocationDAL
    {
        /// <summary>
        /// Gets all the 5 closest locations that are within a set distance of the user.
        /// </summary>
        /// <param name="latitude">The latitude of the user.</param>
        /// <param name="longitude">The longitude of the user.</param>
        /// <param name="maxDistance">The max  distnace the user is willing to travel, in miles.</param>
        /// <returns>A list of the 5 closest locations within 1 mile</returns>
        IList<Location> GetNeabyLocations(decimal latitude, decimal longitude, double maxDistance);

		Location GetLocationById(int id);

	}
}
