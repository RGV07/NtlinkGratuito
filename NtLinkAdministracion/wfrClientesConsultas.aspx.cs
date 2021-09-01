﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServicioLocalContract;
using System.Drawing;

namespace NtLinkAdministracion
{
    public partial class wfrClientesConsultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                var usuario = Session["usuario"] as usuarios;
                 var cliente = NtLinkClientFactory.Cliente();
                using (cliente as IDisposable)
                {
                    var ejecutivos = cliente.ObtenerPromotores();
                    ejecutivos.Insert(0, new Promotores() {Nombre = "Seleccionar", IdPromotor = 0});
                    ddlEjecutivos.DataSource = ejecutivos;
                    ddlEjecutivos.DataBind();
                }
                //GetSistemas();

            }
        }

        protected void gvClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("EditarSistema"))
            {
                DataKey key = this.gvClientes.DataKeys[Convert.ToInt32(e.CommandArgument)];
                if (key != null)
                {
                    int idCliente = Convert.ToInt32(key.Value);
                    Response.Redirect("wfrClientesNoEditable.aspx?idSistema=" + idCliente);
                }
            }
            else if (e.CommandName.Equals("Contratos"))
            {
                DataKey key = this.gvClientes.DataKeys[Convert.ToInt32(e.CommandArgument)];
                if (key != null)
                {
                    int idCliente = Convert.ToInt32(key.Value);//se cambio para las altas de contratos
                    Response.Redirect("wfrClientesContratosConsulta.aspx?idSistema=" + idCliente);
                }
            }
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            GetSistemas();
        }



        #region helper methods

        private void GetSistemas()
        {

            var cliente = NtLinkClientFactory.Cliente();
            using (cliente as IDisposable)
            {

                this.gvClientes.DataSource =
                    cliente.ListaSistemas(txtBusqueda.Text, int.Parse(ddlEjecutivos.SelectedValue))
                        .OrderBy(p => p.RazonSocial);
                gvClientes.DataBind();
            }

        }

        #endregion

        protected void gvClientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    Label tot = (Label)e.Row.FindControl("Label1");

            //    if (tot.Text != "")
            //    {
            //        decimal total = Convert.ToDecimal(tot.Text);
            //        if (total >= 80)
            //        {
            //            e.Row.BackColor = Color.Red;
            //            e.Row.ForeColor = Color.Black;
            //        }
            //    }
            //}
        }

        protected void btnNuevoCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("wfrClientes.aspx");
        }


        protected void ddlEjecutivos_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}