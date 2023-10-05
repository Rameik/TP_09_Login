using Microsoft.AspNetCore.Mvc;
using TPLogin.Models;

namespace TPLogin.Controllers;

public class AccountController : Controller
{
    public IActionResult Login(string username, string contraseña)
    {
        Usuario usuarioIniciado = BD.ValidarUsuario(username, contraseña);
        if(usuarioIniciado != null){
            Inicio.contador2 = 0;
            ViewBag.Usuario = usuarioIniciado;
            return View("Bienvenida");
        }
        else{
            Inicio.contador2++;
            if (Inicio.contador2 > 2){
                Inicio.contador2 = 0;
            }
            if(Inicio.contador2 > 1){
                ViewBag.Error = "Hubo algun error. Revisá si ingresaste correctamente los datos.";
            }
            return View();
        }
    }

    public IActionResult Registro(Usuario usuarioNuevo)
    {
        if(usuarioNuevo.Nombre == "" || usuarioNuevo.Nombre == null){
            ViewBag.ListaUsuarios = BD.ListarUsuarios();
        }
        else{
            BD.InsertarUsuario(usuarioNuevo);
            ViewBag.ListaUsuarios = BD.ListarUsuarios();
            ViewBag.Exito = "Se registró exitosamente! Por favor, dirijase a la pestaña de inicio de sesión.";
        }
        return View();
    }

    public IActionResult OlvideContraseña(string username, string contraseña)
    {
        if(BD.ModificarContraseña(username, contraseña)){
            Inicio.contador = 0;
            ViewBag.Exito = "Se cambió la contraseña exitosamente! Por favor, dirijase a la pestaña de inicio de sesión.";
        }
        else{
            Inicio.contador++;
            if (Inicio.contador > 2){
                Inicio.contador = 0;
            }
            if(Inicio.contador > 1){
                ViewBag.Error = "Se ve que algo falló. Revisá si ingresaste correctamente los datos.";
            }
        }
        return View();
    }
}
