﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class User
    {
        /// <summary>
        /// The user's id.
        /// </summary>
        [Required]
        public int Id { get; set; }

        /// <summary>
        /// The user's username.
        /// </summary>
        [Required]
        [MaxLength(50)]
        public string Username { get; set; }

        /// <summary>
        /// The user's password.
        /// </summary>
        [Required]
		[MinLength(6)]
        public string Password { get; set; }

        /// <summary>
        /// The user's salt.
        /// </summary>
        [Required]
        public string Salt { get; set; }

        /// <summary>
        /// The user's role.
        /// </summary>
        public string Role { get; set; }
        
        /// <summary>
        /// Boolean representing if a user is visitor or not.
        /// </summary>
        public bool Visitor { get; set; }
        
        /// <summary>
        /// The uesr's email
        /// </summary>
        [Required]
        public string Email { get; set; }

        /// <summary>
        /// The location of the image file for the user.
        /// </summary>
        public string Avatar { get; set; }
    }
}
