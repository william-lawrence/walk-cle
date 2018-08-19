using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;

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

        [HttpGet]
        public JsonResult KeywordSearch(string keywords)
        {
            IList<Location> locations = new List<Location>();
            IList<Location> results = new List<Location>();

            List<string> searchTerms = new List<string>(keywords.Split(' '));

            foreach (var searchTerm in searchTerms)
            {
                // Gets a list of locations based on a search term
                // This is over written for each seach term.
                locations = locationDal.GetLocationsByKeyword(searchTerm);

                // Adds each location from the results of a search term to the results.
                // This ensures that every location found in the search is added to the results.
                foreach (Location location in locations)
                {
                    results.Add(location);
                }
            }

            results = RemoveDuplicateLocationsFromResults(results);

            return Json(results);
        }

        /// <summary>
        /// Removes repeated locations from the search results by comparing the IDs of each location
        /// </summary>
        /// <param name="results">the results of the search. It may contain repeats based on the search.</param>
        /// <returns>A list of locations with no repeated locations</returns>
        private IList<Location> RemoveDuplicateLocationsFromResults(IList<Location> results)
        {
            for (int i = 0; i < results.Count; i++)
            {
                for (int j = 0; j < results.Count; j++)
                {
                    // If two elements have matching IDs, and they aren't the same element, remove them.
                    if (results[i].Id == results[j].Id && i != j)
                    {
                        results.Remove(results[j]);
                        // Reset the counting varables so that we start from the beginning of the new shortened list.
                        i = 0;
                        j = 0;
                    }
                }
            }

            return results;
        }
    }
}
