# Overview

This project is a basic template that provides the following capabilities out of the box:
* authentication

## Authentication

The authentication provider provided allows you to develop code in ASP.NET MVC without having to develop your 
own authentication/authorization framework. The `IAuthProvider` provided in `WebApplication.Web.Providers.Auth`
defines a number of methods that are capable of being used from various parts of your application. This includes
but is not limited to:

* Get current logged in user
* Create new user
* Log in as user

See `IAuthProvider.cs` for a full description of how the methods are intended to be used in your application.

### Set Up

A `SessionAuthProvider` class is included with this project to implement the `IAuthProvider` interface. As such the 
following items need to be configured.

#### Database

A sql script is provided to create the users table at `schema.sql`. If you need to modify the table
structure, make sure to update the `User` model and the associated data access layer classes.

#### Session

```csharp
 services.AddSession(options =>
            {
                // Sets session expiration to 20 minuates
                options.IdleTimeout = TimeSpan.FromMinutes(20);
                options.Cookie.HttpOnly = true;
            });
```

#### Dependency Mappings

```csharp
// For Access to Session outside of a Controller
services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
// To Map IAuthProvider to SessionAuthProvider
services.AddTransient<IAuthProvider, SessionAuthProvider>();
// To Map IUserDAL to UserSqlDAL
services.AddTransient<IUserDAL>(m => new UserSqlDAL(@"Your Connection String"));
```

### Usage

You can access the `IAuthProvider` by allowing it to be injected into your controllers.

```csharp
private readonly IAuthProvider authProvider;
public AccountController(IAuthProvider authProvider)
{
    this.authProvider = authProvider;
}
```

Once you have an instance of the `IAuthProvider` you can invoke methods on it.

* `GetCurrentUser()` - will return the current logged in user (null if they are not)
* `SignIn(string username, string password)` - will validate the credentials and authenticate the user
* `LogOff()` - will log the user out of the system
* `ChangePassword(string existingPassword, string newPassword)` - will validate the user's existing credentials and change their password
* `Register(string username, string password, string role)` - will create a new user with the provided credentials and role