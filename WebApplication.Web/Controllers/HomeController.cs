using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;

namespace WebApplication.Web.Controllers
{
    public class HomeController : Controller
    {
		//private readonly ICategorySqlDAL dal;

		//public HomeController(ICategorySqlDAL dal)
		//{
		//	this.dal = dal;
		//}

		/// <summary>
		/// Shows the home page
		/// </summary>
		/// <returns>The view with the home page</returns>
		public IActionResult Index()
        {            
            return View();
        }

		//[HttpGet]
		//public JsonResult Category(decimal latitude, decimal longitude, string category)
		//{
		//	IList<Location> locations = dal.CategorySearch(category);

		//	return Json(locations);
		//}

		#region Microsoft Boilerplate
		public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        #endregion

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
