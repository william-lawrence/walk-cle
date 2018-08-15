using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.Models;
using WebApplication.Web.Providers.Auth;

namespace WebApplication.Web.ViewComponents
{
	public class AuthenticatedUserViewComponent : ViewComponent
	{
		private readonly IAuthProvider authProvider;

		public AuthenticatedUserViewComponent(IAuthProvider authProvider)
		{
			this.authProvider = authProvider;
		}

		public IViewComponentResult Invoke()
		{
			User model = null;

			if (authProvider.IsLoggedIn)
			{
				model = authProvider.GetCurrentUser();
			}
			return View(model);
		}
	}
}
