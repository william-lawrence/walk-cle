﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public interface ICheckinSqlDAL
    {
        IList<Checkin> GetUserCheckins(int userId);
		bool SaveCheckIn(int userId, int locationId);
	}
}
