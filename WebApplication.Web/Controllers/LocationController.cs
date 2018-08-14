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

        public LocationController(IAuthProvider authProvider, ILocationDAL dal)
        {
            this.authProvider = authProvider;
            this.dal = dal;
        }

        //decimal latitude, decimal longitude
        public JsonResult NearbyLocations(decimal latitude, decimal longitude)
        {
            IList<Location> locations = new List<Location>();

            // The maximum distnace in miles.
            double maxDistance = 1;



            locations = dal.GetNeabyLocations(latitude, longitude, maxDistance);

            return Json(locations);
        }

        public IActionResult Detail()
        {
            return View();
        }
    }
}