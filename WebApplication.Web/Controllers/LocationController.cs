using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;
using WebApplication.Web.Providers.Auth;

namespace WebApplication.Web.Controllers
{
    public class LocationController : Controller
    {
        private readonly IAuthProvider authProvider;
        private readonly ILocationDAL dal;
		private readonly ICategorySqlDAL categoryDal;

        /// <summary>
        /// Constructor that adds all the dependencies
        /// </summary>
        /// <param name="authProvider">Where the authentication asd authoriztion is housed</param>
        /// <param name="dal">The locaion data access layer</param>
        /// <param name="categoryDal">The class that is used to access the categories table.</param>
        public LocationController(IAuthProvider authProvider, ILocationDAL dal, ICategorySqlDAL categoryDal)
        {
            this.authProvider = authProvider;
            this.dal = dal;
			this.categoryDal = categoryDal;
        }

        /// <summary>
        /// Takes the users current position and the five locations nearest to them.
        /// </summary>
        /// <param name="latitude">The latitude of the user</param>
        /// <param name="longitude">The longitude of the user</param>
        /// <param name="numberOfLocations"
        /// <returns>A list of nearby locations</returns>
        [HttpGet]
        public JsonResult NearbyLocations(decimal latitude, decimal longitude)
        {
            IList<Location> locations = new List<Location>();

            // The maximum distnace in miles.
            double maxDistance = 1;

            locations = dal.GetNeabyLocations(latitude, longitude, maxDistance);

            return Json(locations);
        }

        /// <summary>
        /// Takes the users location and finds the N closest location nearest to to them within one mile
        /// </summary>
        /// <param name="latitude">The latitude of the user</param>
        /// <param name="longitude">The longitude of the user</param>
        /// <param name="numberOfLocations">The number of users that the user wants to see near them</param>
        /// <returns></returns>
        [HttpGet]
        public JsonResult NearbyNLocations(decimal latitude, decimal longitude, int numberOfLocations)
        {
            IList<Location> locations = new List<Location>();

            double maxDistance = 1;

            locations = dal.GetNeabyNLocations(latitude, longitude, maxDistance, numberOfLocations);

            return Json(locations);
        }

        /// <summary>
        /// Shows the details for a selected location.
        /// </summary>
        /// <param name="location">The location to get the details for.</param>
        /// <returns></returns>
        public IActionResult Detail(int id)
        {
			Location location = dal.GetLocationById(id);

			location.Categories = categoryDal.GetCategoriesForLocation(id);
			
            return View(location);
        }
    }
}