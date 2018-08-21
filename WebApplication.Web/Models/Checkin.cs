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
        public Location Location { get; set; }

        /// <summary>
        /// The date and time when the user checked in.
        /// </summary>
        public DateTime Date { get; set; }
    }
}
