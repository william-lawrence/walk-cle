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
        IList<Location> GetNearbyLocations(decimal latitude, decimal longitude, double maxDistance);

        /// <summary>
        /// Gets the N closest locations that are within a set distance of the user.
        /// </summary>
        /// <param name="latitude">The latitude of the user's location.</param>
        /// <param name="longitude">The longitude of the user's location</param>
        /// <param name="maxDistance">The max dstnace form the user in miles. </param>
        /// <param name="numberOfLocations">The number of locations to return within the set distance.</param>
        /// <returns>A list of the 5 closest locations within 1 mile</returns>
        IList<Location> GetNearbyNLocations(decimal latitude, decimal longitude, double maxDistance, int numberOfLocations);

        Location GetLocationById(int id);


        IList<Location> GetLocationsByKeyword(string keyword);


    }
}
