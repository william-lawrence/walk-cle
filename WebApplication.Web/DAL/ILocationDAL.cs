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
        /// <param name="latitude"></param>
        /// <param name="longitude"></param>
        /// <param name="maxDistance"></param>
        /// <returns>A list of the 5 closest locations within 1 mile</returns>
        IList<Location> GetNeabyLocations(decimal Llatitude, decimal longitude, double maxDistance);

		Location GetLocationById(int id);

	}
}
