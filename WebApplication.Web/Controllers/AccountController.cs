using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models.Account;
using WebApplication.Web.Providers.Auth;

namespace WebApplication.Web.Controllers
{    
    public class AccountController : Controller
    {
        private readonly IAuthProvider authProvider;
		private readonly IUserDAL dal;

        public AccountController(IAuthProvider authProvider, IUserDAL dal)
        {
            this.authProvider = authProvider;
			this.dal = dal;
        }
        
        [HttpGet]
        public IActionResult Login()
        {            
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login(LoginViewModel loginViewModel)
        {
            // Ensure the fields were filled out
            if (ModelState.IsValid)
            {
				// Check that they provided correct credentials
                bool validLogin = authProvider.SignIn(loginViewModel.Username, loginViewModel.Password);
				if (validLogin)
				{
					// Redirect the user where you want them to go after successful login
					return RedirectToAction("Index", "Home");
				}
				else
				{
					ModelState.AddModelError("combo-not-correct", "That is not a valid username/password combination. Please try again.");
				}

            }

            return View(loginViewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult LogOff()
        {
            // Clear user from session
            authProvider.LogOff();

            // Redirect the user where you want them to go after logoff
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(RegisterViewModel registerViewModel)
        {
            if (ModelState.IsValid)
            {
				//Check to see if username is available
				if (dal.GetUser(registerViewModel.Username) == null)
				{

					// Register them as a new user (and set default role)
					authProvider.Register(registerViewModel.Username, registerViewModel.Email, registerViewModel.Password, "Role");

					// Redirect the user where you want them to go after registering
					return RedirectToAction("Index", "Home");
				}
				else
				{
					ModelState.AddModelError("username-taken", "That username is not available");
				}
            }

            return View(registerViewModel);
        }
    }
}