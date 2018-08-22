using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;
using WebApplication.Web.Models.Account;
using WebApplication.Web.Providers.Auth;

namespace WebApplication.Web.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAuthProvider authProvider;
        private readonly IUserDAL userDal;
        private readonly ICheckinSqlDAL checkinDal;
        private readonly IBadgeSqlDAL badgeDal;

        /// <summary>
        /// Constructor that injects all the dependencies for the account controller.
        /// </summary>
        /// <param name="authProvider"></param>
        /// <param name="userDal"></param>
        /// <param name="checkinDal"></param>
        /// <param name="badgeDal"></param>
        public AccountController(IAuthProvider authProvider, IUserDAL userDal, ICheckinSqlDAL checkinDal, IBadgeSqlDAL badgeDal)
        {
            this.authProvider = authProvider;
            this.userDal = userDal;
            this.checkinDal = checkinDal;
            this.badgeDal = badgeDal;
        }

        /// <summary>
        /// Displays the login page that the user can use to login.
        /// </summary>
        /// <returns>View of the login page.</returns>
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        /// <summary>
        /// Logs the user in to the system if they used te correct credentials
        /// </summary>
        /// <param name="loginViewModel">The LoginViewModel from the Login view</param>
        /// <returns>The homepage if the credentials are correct, an error if they are not correct.</returns>
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

        /// <summary>
        /// Logs the user off.
        /// </summary>
        /// <returns>The view of the home page</returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult LogOff()
        {
            // Clear user from session
            authProvider.LogOff();

            // Redirect the user where you want them to go after logoff
            return RedirectToAction("Index", "Home");
        }

        /// <summary>
        /// Shows the registration page for a new user
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        /// <summary>
        /// Registers the new user provided the parameters tey entered are valid
        /// </summary>
        /// <param name="registerViewModel">The register view model from the view that as the information that the user provided.</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(RegisterViewModel registerViewModel)
        {
            if (ModelState.IsValid)
            {
                // Check to see if username is available
                if (userDal.GetUser(registerViewModel.Username) == null)
                {

                    // Register them as a new user (and set default role)
                    authProvider.Register(registerViewModel.Username, registerViewModel.Email, registerViewModel.Password, "Role");

                    // Redirect the user where you want them to go after registering
                    return RedirectToAction("Index", "Home");
                }
                // Displays an errors if the user name is taken.
                else
                {
                    ModelState.AddModelError("username-taken", "That username is not available");
                }
            }

            return View(registerViewModel);
        }

        /// <summary>
        /// Takes the user to their profile page where they can view the awards that they have earned.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult Profile()
        {
            User user = new User();

            // Returns the user if they are registered and logged in. If they are not, it returns null. 
            user = authProvider.GetCurrentUser();

            // If the user is not logged in, send them to the register page.
            if (user == null)
            {
                return RedirectToAction("Account", "Register");
            }

            return View(user);
        }

        /// <summary>
        /// Gets all the check in data for the user that iis currently signed in.
        /// </summary>
        /// <returns>JSON that represents the check-in object</returns>
        [HttpGet]
        [AuthorizationFilter]
        public JsonResult GetCheckins()
        {
            IList<Checkin> checkins = new List<Checkin>();
            User currentUser = new User();

            currentUser = authProvider.GetCurrentUser();

            // If no user is logged in, They get an empty JSON result.
            // They shouldn't be able to get to this point without logging in.
            // Better saffe than sorry.
            if (currentUser == null)
            {
                Json(checkins);
            }

            checkins = checkinDal.GetUserCheckins(currentUser.Id);

            return Json(checkins);
        }
    }
}