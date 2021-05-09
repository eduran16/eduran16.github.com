using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using UsuarioCRUD.Models;

namespace UsuarioCRUD.Controllers
{
    public class UsuarioController : Controller
    {
        Usuario u = new Usuario();
        string conexionURL = @"Data Source = DESKTOP-0N028FM;Initial Catalog = UsuarioBD; User ID = sa; Password=12345";
        // GET: Usuario
        [HttpGet]
        public ActionResult Index()
        {
            DataTable dtUsuario = new DataTable();
            using (SqlConnection con = new SqlConnection(conexionURL))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Datos",con);
                sda.Fill(dtUsuario);
            }
            return View(dtUsuario);
        }

        // GET: Usuario/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View(u);
        }

        // POST: Usuario/Create
        [HttpPost]
        public ActionResult Create(Usuario u)
        {
            using (SqlConnection con = new SqlConnection(conexionURL))
            {
                con.Open();
                string query = "insert into Datos values (@nombre, @apellido, @sexo, @userName, @email, @password, @comentario)";
                SqlCommand sc = new SqlCommand(query, con);
                //sc.Parameters.AddWithValue("@IdUsuario", u.idUsuario);
                //sc.Parameters.AddWithValue("@nombre", u.nombre);
                //sc.Parameters.AddWithValue("@apellido", u.apellido);
                //sc.Parameters.AddWithValue("@sexo", u.sexo);
                //sc.Parameters.AddWithValue("@userName", u.userName);
                //sc.Parameters.AddWithValue("@email", u.email);
                //sc.Parameters.AddWithValue("@password", u.password);
                //sc.Parameters.AddWithValue("@comentario", u.comentario);
                //sc.ExecuteNonQuery();
                if (u.comentario == null)
                {
                    sc.Parameters.AddWithValue("@nombre", u.nombre);
                    sc.Parameters.AddWithValue("@apellido", u.apellido);
                    sc.Parameters.AddWithValue("@sexo", u.sexo);
                    sc.Parameters.AddWithValue("@userName", u.userName);
                    sc.Parameters.AddWithValue("@email", u.email);
                    sc.Parameters.AddWithValue("@password", u.password);
                    sc.Parameters.AddWithValue("@comentario", "Vacio");
                    sc.ExecuteNonQuery();
                } else
                {
                    sc.Parameters.AddWithValue("@nombre", u.nombre);
                    sc.Parameters.AddWithValue("@apellido", u.apellido);
                    sc.Parameters.AddWithValue("@sexo", u.sexo);
                    sc.Parameters.AddWithValue("@userName", u.userName);
                    sc.Parameters.AddWithValue("@email", u.email);
                    sc.Parameters.AddWithValue("@password", u.password);
                    sc.Parameters.AddWithValue("@comentario", u.comentario);
                    sc.ExecuteNonQuery();
                }
            }
            return RedirectToAction("Index");
        }

        // GET: Usuario/Edit/5
        public ActionResult Edit(int id)
        {
            DataTable dtUsuario = new DataTable();
            using (SqlConnection con = new SqlConnection(conexionURL))
            {
                con.Open();
                string query = "select * from Datos where ID_USUARIO = @IdUsuario";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.Parameters.AddWithValue("@IdUsuario", id);
                sda.Fill(dtUsuario);
            }

            if (dtUsuario.Rows.Count == 1)
            {
                u.idUsuario = Convert.ToInt32(dtUsuario.Rows[0][0].ToString());
                u.nombre = dtUsuario.Rows[0][1].ToString();
                u.apellido = dtUsuario.Rows[0][2].ToString();
                u.sexo = dtUsuario.Rows[0][3].ToString();
                u.userName = dtUsuario.Rows[0][4].ToString();
                u.email = dtUsuario.Rows[0][5].ToString();
                u.password = dtUsuario.Rows[0][6].ToString();
                //u.comentario = dtUsuario.Rows[0][7].ToString();
                if (dtUsuario.Rows[0][7].ToString() == "Vacio")
                {
                    u.comentario = null;
                }
                else
                {
                    u.comentario = dtUsuario.Rows[0][7].ToString();
                }
                return View(u);
            }
            else
                return RedirectToAction("Index");
        }

        // POST: Usuario/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Usuario u)
        {
            using (SqlConnection con = new SqlConnection(conexionURL))
            {
                con.Open();
                string query = "update Datos set NOMBRE = @nombre, APELLIDO = @apellido, SEXO = @sexo, NOMBRE_USUARIO = @userName, CORREO_ELECTRONICO = @email, PASSWORD = @password, COMENTARIO = @comentario where ID_USUARIO = @IdUsuario";
                SqlCommand sc = new SqlCommand(query, con);
                sc.Parameters.AddWithValue("@IdUsuario", id);
                //sc.Parameters.AddWithValue("@nombre", u.nombre);
                //sc.Parameters.AddWithValue("@apellido", u.apellido);
                //sc.Parameters.AddWithValue("@sexo", u.sexo);
                //sc.Parameters.AddWithValue("@userName", u.userName);
                //sc.Parameters.AddWithValue("@email", u.email);
                //sc.Parameters.AddWithValue("@password", u.password);
                //sc.Parameters.AddWithValue("@comentario", u.comentario);
                if (u.comentario == null)
                {
                    //sc.Parameters.AddWithValue("@IdUsuario", id);
                    sc.Parameters.AddWithValue("@nombre", u.nombre);
                    sc.Parameters.AddWithValue("@apellido", u.apellido);
                    sc.Parameters.AddWithValue("@sexo", u.sexo);
                    sc.Parameters.AddWithValue("@userName", u.userName);
                    sc.Parameters.AddWithValue("@email", u.email);
                    sc.Parameters.AddWithValue("@password", u.password);
                    sc.Parameters.AddWithValue("@comentario", "Vacio");
                    sc.ExecuteNonQuery();
                }
                else
                {
                    //sc.Parameters.AddWithValue("@IdUsuario", id);
                    sc.Parameters.AddWithValue("@nombre", u.nombre);
                    sc.Parameters.AddWithValue("@apellido", u.apellido);
                    sc.Parameters.AddWithValue("@sexo", u.sexo);
                    sc.Parameters.AddWithValue("@userName", u.userName);
                    sc.Parameters.AddWithValue("@email", u.email);
                    sc.Parameters.AddWithValue("@password", u.password);
                    sc.Parameters.AddWithValue("@comentario", u.comentario);
                    sc.ExecuteNonQuery();
                }
            }
            return RedirectToAction("Index");
        }

        // GET: Usuario/Delete/5
        public ActionResult Delete(int id)
        {
            using (SqlConnection con = new SqlConnection(conexionURL))
            {
                con.Open();
                string query = "delete from Datos where ID_USUARIO = @IdUsuario";
                SqlCommand sc = new SqlCommand(query, con);
                sc.Parameters.AddWithValue("@IdUsuario", id);
                sc.ExecuteNonQuery();
            }
            return RedirectToAction("Index");
        }
    }
}
