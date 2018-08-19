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
        /// <summary>
        /// The DAL used to get category information from the database. 
        /// </summary>
		private readonly ICategorySqlDAL categroyDal;

        /// <summary>
        /// The DAL used to get location information from the database. 
        /// </summary>
		private readonly ILocationDAL locationDal;

        /// <summary>
        /// Constructor used to inject category DAL and location DAL
        /// </summary>
        /// <param name="categoryDal">The category DAL to use.</param>
        /// <param name="locationDal">The location DAL to use.</param>
		public SearchController(ICategorySqlDAL categoryDal, ILocationDAL locationDal)
		{
			this.categroyDal = categoryDal;
			this.locationDal = locationDal;
		}

        /// <summary>
        /// Searches for locations by category
        /// </summary>
        /// <param name="cat">The category to search by</param>
        /// <returns>A list of all the loccations that fall under a particular category as JSON</returns>
		[HttpGet]
        public JsonResult CategorySearch(string cat)
        {
			IList<Location> locations = new List<Location>();

			locations = categroyDal.CategorySearch(cat);

            return Json(locations);
        }

        /// <summary>
        /// Returns the view for a the results of a category search.
        /// </summary>
        /// <param name="cat">The category to to search by</param>
        /// <returns>A view with lacations that fall under the searched category</returns>
		public IActionResult Category(string cat)
        {
            Category category = new Category
            {
                Name = cat
            };

            return View(category);
        }
	}
}
