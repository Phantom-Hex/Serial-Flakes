using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Serial_Flakes.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "About Serial Flakes.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact Phantom Hex.";

            return View();
        }

        public ActionResult Devices()
        {
            ViewBag.Message = "Manage your devices (Requires Login).";

            return View();
        }
    }
}