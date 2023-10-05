using Microsoft.AspNetCore.Mvc;

namespace TPLogin.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
