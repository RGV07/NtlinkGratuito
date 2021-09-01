﻿using ServicioLocalContract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NtLinkAdministracion
{
    public partial class wfrUsuariosAccesos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                var cliente = NtLinkClientFactory.Cliente();

                var usuarios = cliente.GetUserList("");
                gvUserView.DataSource = usuarios;
                gvUserView.DataBind();
            

                //var usuario = Session["usuario"] as usuarios;
                //GetSistemas();
                //zthis.gvUserView.DataSource=;
            }

        }

        protected void gvUserView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            int idUser = Convert.ToInt32(this.gvUserView.DataKeys[rowIndex].Value);
            if(e.CommandName=="Edit")
            {
                this.Response.Redirect("wfrEditarAdministradores.aspx?idChange=" + idUser);
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var cliente = NtLinkClientFactory.Cliente();

            var usuarios = cliente.GetUserList(txtBusqueda.Text);
            gvUserView.DataSource = usuarios;
            gvUserView.DataBind();
            
        }

       
         
    }
}