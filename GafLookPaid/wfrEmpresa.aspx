﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEmpresa.aspx.cs" Inherits="GafLookPaid.wfrEmpresa" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

          

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="up1" runat="server"   >
    <ContentTemplate>
   <%-- <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
   --%>     
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Content/bootstrap.css" rel="stylesheet" />
     <script src="Scripts/chosen.jquery.js" ></script>
      <script src="Scripts/bootstrapcdn-v3-4-0-bootstrap.min.js"></script>
     <link href="Content/Mensajes.css" rel="stylesheet" />
     <link href="Content/UpdateProgress.css" rel="stylesheet" />

         <script type="text/javascript">

         function cargarFuncion() {
               // nombre de archivo subido
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
             });
              }

               $(document).ready(cargarFuncion);
    </script>

          <script type="text/javascript">
         Sys.WebForms.PageRequestManager.getInstance().add_endRequest(cargarFuncion);
    </script>
 
    <section class="services">
        <div class="container">
            <div class="title text-center">
            
               
            </div>
          
              
     <div  class = "card mt-2">   
            <div class="card-header">
               <h3>Empresa</h3>
            </div>
            <div class ="card-body" >
    
       <div class = "row">
                    <div class = "form-group col-lg-12">
               
    <input type="button" value="Actualiza tus datos" 
        onclick="javascript: window.open('http://ntlink2.com.mx/actualizacion%20de%20datos/actualizaciondatos.html', '', 'width=600,height=400,left=50,top=50,toolbar=yes');" class="btn btn-outline-success" />
   </div>
           </div>

         
     
                  <div class = "row">
                    <div class = "form-group col-lg-2"></div>
                    <div class = "form-group col-lg-4">
                 <asp:Label ID="lblUUID" runat="server" class="control-label" Text="RFC"></asp:Label>
                  <asp:TextBox runat="server" ID="txtRFC"  CssClass="form-control"/>
                        </div>
                       <div class = "form-group col-lg-4">
                 <asp:Label ID="Label1" runat="server" class="control-label" Text="Razón Social"></asp:Label>
                           <asp:TextBox runat="server" ID="txtRazonSocial"    CssClass="form-control"/>
                 </div>
   </div>
                  <div class = "row">
                    <div class = "form-group col-lg-2"></div>
                    <div class = "form-group col-lg-4">
                 <asp:Label ID="Label2" runat="server" class="control-label" Text="Régimen Fiscal"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlRegimen" AutoPostBack="True" 
                    onselectedindexchanged="ddlRegimen_SelectedIndexChanged" CssClass="form-control" >
                 <asp:ListItem Value="601" Text="General de Ley Personas Morales"	 runat="server" />
 <asp:ListItem Value="603" Text="Personas Morales con Fines no Lucrativos"	 runat="server" />
 <asp:ListItem Value="605" Text="Sueldos y Salarios e Ingresos Asimilados a Salarios"	 runat="server" />
 <asp:ListItem Value="606" Text="Arrendamiento"	 runat="server" />
 <asp:ListItem Value="608" Text="Demás ingresos"	 runat="server" />
 <asp:ListItem Value="609" Text="Consolidación"	 runat="server" />
 <asp:ListItem Value="610" Text="Residentes en el Extranjero sin Establecimiento Permanente en México"	 runat="server"/>
 <asp:ListItem Value="611" Text="Ingresos por Dividendos (socios y accionistas)"	 runat="server" />
 <asp:ListItem Value="612" Text="Personas Físicas con Actividades Empresariales y Profesionales"	 runat="server" />
 <asp:ListItem Value="614" Text="Ingresos por intereses"	 runat="server" />
 <asp:ListItem Value="616" Text="Sin obligaciones fiscales"	 runat="server" />
 <asp:ListItem Value="620" Text="Sociedades Cooperativas de Producción que optan por diferir sus ingresos"	 runat="server" />
 <asp:ListItem Value="621" Text="Incorporación Fiscal"	 runat="server" />
 <asp:ListItem Value="622" Text="Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras"	 runat="server" />
 <asp:ListItem Value="623" Text="Opcional para Grupos de Sociedades"	 runat="server" />
 <asp:ListItem Value="624" Text="Coordinados"	 runat="server" />
 <asp:ListItem Value="628" Text="Hidrocarburos"	 runat="server" />
 <asp:ListItem Value="607" Text="Régimen de Enajenación o Adquisición de Bienes"	 runat="server" />
 <asp:ListItem Value="629" Text="De los Regímenes Fiscales Preferentes y de las Empresas Multinacionales"	 runat="server" />
 <asp:ListItem Value="630" Text="Enajenación de acciones en bolsa de valores"	 runat="server" />
 <asp:ListItem Value="615" Text="Régimen de los ingresos por obtención de premios"	 runat="server" />
                </asp:DropDownList>
       </div>
                           <div class = "form-group col-lg-4">
              <asp:Label ID="Label3" runat="server" class="control-label" Text="CURP"></asp:Label>
                <asp:TextBox runat="server" ID="txtCURP" MaxLength="24" CssClass="form-control"   />
                       </div>
                      </div>
                           <div class = "row"> 
                                     <div class = "form-group col-lg-2"></div>
                  
                    <div class = "form-group col-lg-3">
                 <asp:Label ID="Label4" runat="server" class="control-label" Text="Calle"></asp:Label>
         <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control"/>
              </div>
             <div class = "form-group col-lg-3">
                 <asp:Label ID="Label5" runat="server" class="control-label" Text="No Exterior"></asp:Label>
           <asp:TextBox runat="server" ID="txtExt" CssClass="form-control" />
           </div>
       <div class = "form-group col-lg-3">
                 <asp:Label ID="Label6" runat="server" class="control-label" Text="No Interior"></asp:Label>
            <asp:TextBox runat="server" ID="txtInt" CssClass="form-control" />
           </div>
                               </div>
         <div class = "row">
               <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
                 <asp:Label ID="Label7" runat="server" class="control-label" Text="Colonia"></asp:Label>
                  <asp:TextBox runat="server" ID="txtColonia" CssClass="form-control" />
         </div>
          <div class = "form-group col-lg-3">
           <asp:Label ID="Label8" runat="server" class="control-label" Text="Municipio"></asp:Label>
        <asp:TextBox runat="server" ID="txtMunicipio" CssClass="form-control" />
              </div>
               <div class = "form-group col-lg-3">
           <asp:Label ID="Label9" runat="server" class="control-label" Text="Localidad"></asp:Label>
        <asp:TextBox runat="server" ID="txtLocalidad" CssClass="form-control" />
                   </div>
             </div>
         <div class = "row">  
             <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label10" runat="server" class="control-label" Text="Estado"></asp:Label>
           <asp:TextBox runat="server" ID="txtEstado" CssClass="form-control" />
         </div>
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label11" runat="server" class="control-label" Text="C.P."></asp:Label>
          <asp:TextBox runat="server" ID="txtCP" CssClass="form-control" />
         </div>
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label12" runat="server" class="control-label" Text="Referencia"></asp:Label>
          <asp:TextBox runat="server" ID="txtReferencia" CssClass="form-control" />
         </div>
             </div>
         <div class = "row">  
             <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label13" runat="server" class="control-label" Text="Email"></asp:Label>
          <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
         </div>
          <div class = "form-group col-lg-3">
          <asp:Label ID="Label14" runat="server" class="control-label" Text="Teléfono"></asp:Label>
          <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" />
         </div>
           <div class = "form-group col-lg-3">
          <asp:Label ID="Label15" runat="server" class="control-label" Text="Contacto Administrativo"></asp:Label>
         <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
               </div>
             </div>
               <!--  <td class="style139">Web:</td>
            <td class="style129"><asp:TextBox runat="server" ID="txtWeb" Width="292px" 
                    Height="20px" /></td>
            <td class="style139">Orientación del Archivo Pdf:</td>
            <td class="style129">
                <asp:DropDownList runat="server" ID="ddlOrientacion" 
                    Height="16px" Width="99px" >
                    <asp:ListItem Value="0" Text="Vertical" ></asp:ListItem> 
                    <asp:ListItem Value="1" Text="Horizontal" ></asp:ListItem> 
            </asp:DropDownList>-->
         <div class = "row">  <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-4">
          <asp:Label ID="Label16" runat="server" class="control-label" Text="Leyenda Encabezado"></asp:Label>
                           <asp:TextBox runat="server" ID="txtLeyendaSuperior" 
                    CssClass="form-control"></asp:TextBox>
             </div>
             <div class = "form-group col-lg-4">
          <asp:Label ID="Label17" runat="server" class="control-label" Text="Leyenda pie de Página"></asp:Label>
          <asp:TextBox runat="server" ID="txtLeyendaPie"   TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                 </div>
             </div>
                <div class = "row">  <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label18" runat="server" class="control-label" Text="Logo Empresa"></asp:Label>
                    <div class="custom-file" >
                               <asp:FileUpload runat="server" ID="fuLogoEmpresa" CssClass="custom-file-input"/>
                             <label class="custom-file-label" for="customFileLang" data-browse="Archivo">Seleccionar Archivo</label>
                        
                            </div>
              <asp:Label ID="Label19" runat="server" class="control-label" Text="(Peso máximo de logo 50 Kb)"></asp:Label>
             </div>
            
              <div class = "form-group col-lg-6">
         <asp:Button runat="server" ID="btnGuardar" Text="Guardar" onclick="btnGuardar_Click"  CssClass="btn btn-outline-success"/>
               
          <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" onclick="btnCancelar_Click" CausesValidation="False"
              CssClass="btn btn-outline-success"/>
                  </div>
                    </div>
   
         
         
        <asp:Panel runat="server" ID="pnlSucursal" Visible="False">
         <div class = "row">
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label20" runat="server" class="control-label" Text="Sucursal"></asp:Label>
             <asp:TextBox runat="server" ID="txtSucursal"  CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="rfvSucursal" ControlToValidate="txtSucursal" 
                      Display="Dynamic" ErrorMessage="* Requerido" ForeColor="Red" />
             </div>
             </div>
         <div class = "row">
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label21" runat="server" class="control-label" Text="Lugar de Expedición"></asp:Label>
            <asp:TextBox runat="server" ID="txtLugarExpedicion" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvLugarExpedicion" ControlToValidate="txtLugarExpedicion" 
                      Display="Dynamic" ErrorMessage="* Requerido" ForeColor="Red" />
               </div>
             <div class = "form-group col-lg-3">
          <asp:Label ID="Label22" runat="server" class="control-label" Text="Contacto Administrativo"></asp:Label>
            <td><asp:TextBox runat="server" ID="txtContacto" CssClass="form-control" />
            </div>
             </div>
        </asp:Panel>

       
       <h4><strong class="style1">Carga de Certificados</strong></h4>
         <!--td class="style159">Si la validación es:“El CSD es correcto”,vuelva a cargar el Cer, Key, Password y de click en Guardar</td-->
         
                   <div class = "row">  <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label23" runat="server" class="control-label" Text="Certificado"></asp:Label>
                         <div class="custom-file" >
                               <asp:FileUpload runat="server" ID="fuCertificado" CssClass="custom-file-input"/>
                             <label class="custom-file-label" for="customFileLang" data-browse="Archivo">Seleccionar el Certificado</label>
                        
                            </div>
        
             </div>
                          <div class = "form-group col-lg-3">
                                      <asp:Label runat="server" ID="lblVencimiento"  CssClass="alert-info"></asp:Label></td>

      </div>
</div>
             <div class = "row">  <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label24" runat="server" class="control-label" Text="Llave Privada"></asp:Label>
              <div class="custom-file" >
                               <asp:FileUpload runat="server" ID="fuLlave" CssClass="custom-file-input"/>
                             <label class="custom-file-label" for="customFileLang" data-browse="Archivo">Seleccionar Llave</label>
                        
                            </div>
             </div>
                  <div class = "form-group col-lg-3">
                      <asp:Label runat="server" ID="lblAdvertencia" ForeColor="Red"  Visible="false" CssClass="alert-error"></asp:Label>
        </div>
                 </div>
                   <div class = "row">  <div class = "form-group col-lg-2"></div>
                  
         <div class = "form-group col-lg-3">
          <asp:Label ID="Label25" runat="server" class="control-label" Text="Contraseña de la Llave"></asp:Label>
          
                 <asp:TextBox runat="server" ID="txtPassWordLlave" TextMode="Password" 
                    CssClass="form-control"  />
            </div>
                        <div class = "form-group col-lg-3">
        
                <asp:Button ID="btnValidar" runat="server" Text="Validar y Guardar" 
                    onclick="btnValidar_Click"  CssClass="btn btn-outline-success" />
               </div>
                     </div>
               
    
</div>
         </div>
</div>
        </section>


        <!-- mwnsajes-->
        <asp:ModalPopupExtender ID="mpeSELLOS" runat="server" PopupControlID="pnlMSG"
         TargetControlID="btngenerarDummy" OkControlID="btnCerrar" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="pnlMSG" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header"  style="background-color:red">
            Error
        </div>
        <div class="body">
            <br />
                   <div class = "row"> 
            <div class="col-lg-11" >
      
        <asp:Label runat="server" ID="LblMensaje" Text="Mensaje:" 
                            Visible="True" class="style161" style="color: #F72020"/>
                </div>
                       </div>
        <br />
        <br />
                   <div class = "row"> 
            <div class="col-lg-11" >
      
        <asp:Label runat="server" ID="LblSolucion" Text="Solucion:" 
                            Visible="True" Height="40px" class="style161" style="color: #000000"/>
                </div>
                       </div>
        <br />
               <div class = "row"> 
            <div class="col-lg-11" >
      
        <asp:Button runat="server" ID="btnCerrar" Text="Aceptar"  class="btn btn-primary" CssClass="btn btn-outline-success" />
                </div>
                   </div>
            </div>
    </asp:Panel>
    <asp:Button runat="server" ID="btngenerarDummy" Style="display: none;" />

        


<asp:Button ID="btnShow3" runat="server" Style="display:none"  Text="Show Modal Popup" />
     <asp:ModalPopupExtender ID="mpMensajeError" runat="server" PopupControlID="PanelError"
         TargetControlID="btnShow3" OkControlID="btnYes3" BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
    <asp:Panel ID="PanelError" runat="server" CssClass="modalPopup" Style="display: none">
        <div class="header"  style="background-color:red">
            Error
        </div>
        <div class="body">
            <br />
             <div class = "row">
       <div class = "form-group col-lg-12">
       <asp:Label runat="server" ID="lblError" ForeColor="Red" />
       </div>

        </div>
        <div class="footer" >
         <asp:HiddenField ID="HiddenField4" runat="server" />
                                    
            <asp:Button ID="btnYes3" runat="server" Text="Aceptar"  CssClass="btn btn-outline-success" />
                         
        </div>
    </asp:Panel>


        </ContentTemplate>
        </asp:UpdatePanel>


</asp:Content>