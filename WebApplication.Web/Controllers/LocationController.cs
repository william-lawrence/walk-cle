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

        public LocationController(IAuthProvider authProvider, ILocationDAL dal, ICategorySqlDAL categoryDal)
        {
            this.authProvider = authProvider;
            this.dal = dal;
			this.categoryDal = categoryDal;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="latitude"></param>
        /// <param name="longitude"></param>
        /// <returns></returns>
        [HttpGet]
        public JsonResult NearbyLocations(decimal latitude, decimal longitude)
        {
            IList<Location> locations = new List<Location>();

            // The maximum distnace in miles.
            double maxDistance = 1;



            locations = dal.GetNeabyLocations(latitude, longitude, maxDistance);

            return Json(locations);
        }

        public IActionResult Detail(Location location)
        {
			// Need to create a singular location return in the LocationDAL

			location.Categories = categoryDal.GetCategoriesForLocation(location.Id);
			
            return View();
        }
    }
}