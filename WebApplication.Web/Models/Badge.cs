using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class Badge
    {
        /// <summary>
        /// The ID of the badge in the database.
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// The name of the badge.
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// The description for the badge.
        /// </summary>
        public string Description { get; set; }

        /// <summary>
        /// The location of the image file for the badge.
        /// </summary>
        public string Image { get; set; }
    }
}
