using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.Models;

namespace WebApplication.Web.Controllers
{
    public class LocationController : Controller
    {




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