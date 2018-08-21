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
        Location Location { get; set; }

        /// <summary>
        /// The user that checked in ata location.
        /// </summary>
        User User { get; set; }

        /// <summary>
        /// The date and time when the user checked in.
        /// </summary>
        DateTime Date { get; set; }
    }
}
