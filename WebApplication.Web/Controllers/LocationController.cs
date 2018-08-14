using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Web.Controllers
{
    public class LocationController : Controller
    {
        public IActionResult (decimal latitude, decimal longitude)
        {
            return Json(locations);
        }
    }
}