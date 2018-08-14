using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class Location
    {
        /// <summary>
        /// The id of the location in the database
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// The name of the location in the database
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// The address of the loaction in the database.
        /// </summary>
        public string Address { get; set; }

        /// <summary>
        /// The street of the location in the database
        /// </summary>
        public string Street { get; set; }

        /// <summary>
        /// the city the location is in.
        /// </summary>
        public string City { get; set; }

        /// <summary>
        /// The state CODE for the state that the location resides in.
        /// </summary>
        public string State { get; set; }

        /// <summary>
        /// The postal code for the location in the database. 
        /// </summary>
        public string Zip { get; set; }

        /// <summary>
        /// The latitude of the location in the database
        /// </summary>
        public decimal Latitude { get; set; }

        /// <summary>
        /// The lonngitude of the location in the database.
        /// </summary>
        public decimal Longitude { get; set; }
        
        /// <summary>
        /// The name of the image to add it to a website.
        /// </summary>
        public string Photo { get; set; }

        /// <summary>
        /// The description of the loaction.
        /// </summary>
        public string Description { get; set; }

        /// <summary>
        /// The url for the website of the location, if it exists.
        /// </summary>
        public string Url { get; set; }

        /// <summary>
        /// The Facebook page for the location, if it exists.
        /// </summary>
        public string Facebook { get; set; }

        /// <summary>
        /// The twitter page for a given location, if it exists.
        /// </summary>
        public string Twitter { get; set; }

		public IList<string> Categories { get; set; }
    }
}
