using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsuarioCRUD
{
    public partial class CalculadoraAreas : System.Web.UI.Page
    {
        WSArea.CalculadoraAreaClient servicio = new WSArea.CalculadoraAreaClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.ViewState["Index"] = Request.UrlReferrer.ToString();
            }
        }

        protected void btnArea_Click(object sender, EventArgs e)
        {
            double b = double.Parse(txtBase.Text);
            double h = double.Parse(txtAltura.Text);

            if (listArea.SelectedValue == "1")
            {
                lblConversion.Text = servicio.AreaCirculo(double.Parse(txtRadio.Text)).ToString();      
            }
            else if (listArea.SelectedValue == "2")
            {
                lblConversion.Text = servicio.AreaTriangulo(b, h).ToString();
            }
            else if (listArea.SelectedValue == "3")
            {
                lblConversion.Text = servicio.AreaRectangulo(b, h).ToString();
            }
            else if (listArea.SelectedValue == "4")
            {
                double lado = double.Parse(txtLado.Text);
                lblConversion.Text = servicio.AreaCuadrado(lado).ToString();
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)this.ViewState["Index"]);
        }
    }
}