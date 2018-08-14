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
        private readonly IUserDAL dal;

        public LocationController(IAuthProvider authProvider, IUserDAL dal)
        {
            this.authProvider = authProvider;
            this.dal = dal;
        }

        public JsonResult NearbyLocations(decimal latitude, decimal longitude)
        {
            List<Location> locations = new List<Location>();



            return Json(locations);
        }

        public IActionResult Detail()
        {
            return View();
        }
    }
}