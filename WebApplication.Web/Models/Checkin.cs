using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class Checkin
    {
        /// <summary>
        /// The location that the user checked in at.
        /// </summary>
        public Location LocationData { get; set; }

        /// <summary>
        /// The date and time when the user checked in.
        /// </summary>
        public DateTime Date { get; set; }
        
        /// <summary>
        /// The name of the location. This is the means to access the name on the front-end
        /// because "name" is a reserved word isn JavaScript.
        /// </summary>
        public string LocationName
        {
            get
            {
                return LocationData.Name;
            }
        }
    }
}
