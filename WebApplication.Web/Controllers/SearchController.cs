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
    public class SearchController : Controller
    {
		private readonly ICategorySqlDAL dal;
		private readonly ILocationDAL locationDal;

		public SearchController(ICategorySqlDAL dal, ILocationDAL locationDal)
		{
			this.dal = dal;
			this.locationDal = locationDal;
		}

        public IActionResult Category(string category)
        {
			IList<Location> locations = new List<Location>();

			locations = dal.CategorySearch(category);

            return View(locations);
        }
    }
}