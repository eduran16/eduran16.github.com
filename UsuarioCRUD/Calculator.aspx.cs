using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsuarioCRUD
{
    public partial class Calculator : System.Web.UI.Page
    {
        //WSCalculator.CalculatorSoap servicio2 = null;
        WSCalculator.CalculatorSoapClient servicio = new WSCalculator.CalculatorSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.ViewState["Index"] = Request.UrlReferrer.ToString();
            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            int x = int.Parse(txtNum1.Text);
            int y = int.Parse(txtNum2.Text);
            int resultado;
            if (listArea.SelectedValue == "1")
            {
                resultado = servicio.Add(x, y);
                lblResultado.Text = resultado.ToString();
            }
            else if (listArea.SelectedValue == "2")
            {
                resultado = servicio.Subtract(x, y);
                lblResultado.Text = resultado.ToString();
            }
            else if (listArea.SelectedValue == "3")
            {
                resultado = servicio.Multiply(x, y);
                lblResultado.Text = resultado.ToString();
            }
            else if (listArea.SelectedValue == "4")
            {
                resultado = servicio.Divide(x, y);
                lblResultado.Text = resultado.ToString();
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)this.ViewState["Index"]);
        }
    }
}