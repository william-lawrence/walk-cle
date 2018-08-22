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
        /// <summary>
        /// The provider for all the user authentication/authorization
        /// </summary>
        private readonly IAuthProvider authProvider;

        /// <summary>
        /// The DAL used to pull information from the location table in the database.
        /// </summary>
        private readonly ILocationDAL dal;

		private readonly ICheckinSqlDAL checkinDal;

        /// <summary>
        /// The DAL used to get information from the location table
        /// </summary>
		private readonly ICategorySqlDAL categoryDal;

        /// <summary>
        /// Constructor that adds all the dependencies
        /// </summary>
        /// <param name="authProvider">Where the authentication asd authoriztion is housed</param>
        /// <param name="dal">The locaion data access layer</param>
        /// <param name="categoryDal">The class that is used to access the categories table.</param>
        public LocationController(IAuthProvider authProvider, ILocationDAL dal, ICategorySqlDAL categoryDal, ICheckinSqlDAL checkinDal)
        {
            this.authProvider = authProvider;
            this.dal = dal;
			this.categoryDal = categoryDal;
			this.checkinDal = checkinDal;
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

            locations = dal.GetNearbyNLocations(latitude, longitude, maxDistance, numberOfLocations);

            return Json(locations);
        }

        /// <summary>
        /// Shows the details for a selected location.
        /// </summary>
        /// <param name="location">The location to get the details for.</param>
        /// <returns></returns>
        public IActionResult Detail(int id, double distanceFromUser)
        {
			Location location = dal.GetLocationById(id);

			location.Categories = categoryDal.GetCategoriesForLocation(id);

			location.DistanceFromUser = distanceFromUser;

			return View(location);
        }

		public IActionResult Checkin(int id)
		{
			User user = new User();
			
			// Returns the user if they are registered and logged in. If they are not, it returns null. 
			user = authProvider.GetCurrentUser();

			// If the user is not logged in, send them to the register page.
			if (user != null)
			{
				if (checkinDal.SaveCheckIn(user.Id, id))
				{
					TempData["checkedin"] = true;
					return RedirectToAction("Index", "Home");
				}
			}
			else
			{
				return RedirectToAction("Login", "Account");
			}

			return RedirectToAction("Index", "Home");
		}
    }
}