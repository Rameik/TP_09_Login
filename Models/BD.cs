using System.Data.SqlClient;
using System.Reflection.Metadata.Ecma335;
using Dapper;
using TPLogin.Models;

namespace TPLogin.Models;

public static class BD
{
    private static string connectionString = @"Server = localhost; DataBase = BD_Login; Trusted_Connection = True;";

    public static List<Usuario> ListarUsuarios(){
        using(SqlConnection db = new SqlConnection(connectionString))
        {
            string sql = "SELECT * FROM Usuarios";
            return db.Query<Usuario>(sql).ToList();
        }
    }

    public static Usuario ValidarUsuario(string usuario, string contraseña){
        using(SqlConnection db = new SqlConnection(connectionString))
        {
            string sql = "SELECT * FROM Usuarios where Username like @pUsuario and Contraseña like @pContraseña";
            return db.QuerySingleOrDefault<Usuario>(sql, new{pUsuario = usuario, pContraseña = contraseña});
        }
    }

    public static void InsertarUsuario(Usuario nuevoUsuario){
        using(SqlConnection db = new SqlConnection(connectionString))
        {
            string sql = "Insert into Usuarios(Username, Contraseña, Nombre, Email, Telefono) values(@pUsuario, @pContraseña, @pNombre, @pEmail, @pTelefono)";
            db.Execute(sql, new{pUsuario = nuevoUsuario.Username, pContraseña = nuevoUsuario.Contraseña, pNombre = nuevoUsuario.Nombre, pEmail = nuevoUsuario.Email, pTelefono = nuevoUsuario.Telefono});
        }
    }

    public static bool ModificarContraseña(string usuario, string contraseña){
        using(SqlConnection db = new SqlConnection(connectionString))
        {
            string sql = "UPDATE Usuarios set Contraseña = @pContraseña where Username = @pUsuario";
            bool resultado = db.Execute(sql, new { pUsuario = usuario, pContraseña = contraseña }) != 0 ? true : false;
            return resultado;
        }
    }
}