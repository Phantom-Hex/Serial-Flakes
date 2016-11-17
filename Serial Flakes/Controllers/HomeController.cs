using Serial_Flakes.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Serial_Flakes.Controllers
{
    public class HomeController : Controller
    {
        private AkihabaraCode db = new AkihabaraCode();

        public ActionResult Index()
        {
            var model = new List<device>();
            //TODO go to the db and get the first five devices
            model = db.devices.OrderByDescending(o => o.id).Take(5).ToList();
            return View(model);
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