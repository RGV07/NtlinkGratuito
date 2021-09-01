﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="wfrFacturasConsulta.aspx.cs" Inherits="NtLinkAdministracion.wfrFacturasConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	.mpeBack
	{
		background-color: Gray;
		filter: alpha(opacity=70);
		opacity: 0.7;
	}
	</style>
	<h1>Reporte de CFDI</h1>
	<p>
		<asp:Label runat="server" ID="lblError" ForeColor="Red" />
	</p>
    <p>
        <a href="https://portalcfdi.facturaelectronica.sat.gob.mx" target="_blank">Sitio de cancelación del SAT</a>
    </p>
	Empresa:&nbsp;<asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="true" DataTextField="RazonSocial"
		DataValueField="idEmpresa" onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" />
	<div style="clear: both"></div>
	<table>
		<tr>
			<td>Fecha Inicial:</td>
			<td>
				<asp:TextBox runat="server" ID="txtFechaInicial" Width="75px" />
				<asp:CompareValidator runat="server" ID="cvFechaInicial" ControlToValidate="txtFechaInicial" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False" PopupButtonID="txtFechaInicial" TargetControlID="txtFechaInicial" Format="dd/MM/yyyy" />
			</td>
			<td>Fecha Final:</td>
			<td>
				<asp:TextBox runat="server" ID="txtFechaFinal" />
				<asp:CompareValidator runat="server" ID="cvFechaFinal" ControlToValidate="txtFechaFinal" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaFinal" Animated="False" PopupButtonID="txtFechaFinal" TargetControlID="txtFechaFinal" Format="dd/MM/yyyy" />
			</td>
			<td />
		</tr>
		<tr>
			<td>Clientes:</td>
			<td><asp:DropDownList runat="server" ID="ddlClientes" AppendDataBoundItems="True" DataTextField="RazonSocial"
			 DataValueField="idCliente" Width="400px" /></td>
			<td>Texto:</td>
			<td><asp:TextBox runat="server" ID="txtTexto" /></td>
			<td />
		</tr>
		<tr>
			<td />
			<td>
				<asp:RadioButtonList RepeatDirection="Horizontal" ID="rbStatus" runat="server">
					<asp:ListItem Text="Todas" Value="Todos" Selected="True"/>
					
					<asp:ListItem Text="Pendientes" Value="Pendiente"/>
				    <asp:ListItem Text="Pagadas" Value="Pagado" />
                    <asp:ListItem Text="Canceladas" Value="Cancelado"/>
				
				</asp:RadioButtonList>

			</td>
			<td />
			<td style="text-align: right;"><asp:Button runat="server" ID="btnBuscar" Text="Buscar" class="btn btn-primary"
			 onclick="btnBuscar_Click" /></td>
			<td><asp:Button runat="server" ID="btnExportar"  class="btn btn-primary" Text="Exportar Excel" onclick="btnExportar_Click" /></td>
            <td><asp:Button runat="server" ID="btnDescargarTodo"  class="btn btn-primary" Text="Descargar Seleccionados" OnClick="btnDescargarTodo_OnClick" /></td>
		</tr>
	</table>
     <div style="height: 950%; overflow-y: scroll" >
        <asp:HiddenField runat="server" ID="hidSel" Value="Sel"/>
        <asp:GridView ShowFooter="True" runat="server" ID="gvFacturas" 
            AutoGenerateColumns="False" DataKeyNames="Guid,IdCliente,idventa"
		onrowcommand="gvFacturas_RowCommand" AllowPaging="True" PageSize="6" Width="95%"
		onpageindexchanging="gvFacturas_PageIndexChanging" 
		onrowdatabound="gvFacturas_RowDataBound" style="margin-top: 0px">
		<PagerSettings Position="Bottom" Visible="true" />
	    <FooterStyle BackColor="GreenYellow" Font-Bold="True" />
		<Columns>
			<asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" />
			<asp:BoundField HeaderText="Fecha" DataField="fecha" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:BoundField HeaderText="% I.V.A." DataField="PorcentajeIva" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="SubTotal" DataField="Subtotal" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="I.V.A." DataField="IVA" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.V.A." DataField="RetIva" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.S.R." DataField="RetIsr" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="I.E.P.S." DataField="Ieps" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />

			<asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Usuario" DataField="Usuario"/>
			<asp:BoundField HeaderText="Status" DataField="StatusFactura"/>
			<asp:ButtonField ButtonType="Link" Text="Pagar" CommandName="Pagar" />
			<asp:ButtonField ButtonType="Link" Text="XML" CommandName="DescargarXml" />
			<asp:ButtonField ButtonType="Link" Text="PDF" CommandName="DescargarPdf" />
			<asp:ButtonField ButtonType="Link" Text="Enviar Email" CommandName="EnviarEmail" />
            <asp:TemplateField  HeaderText="Cancelar">
                <ItemTemplate>
                    <asp:Button runat="server" Text='<%# (short)Eval("Cancelado") == 1 ? "Acuse Cancelacion" : "Cancelar"  %>'  CommandName='<%# (short)Eval("Cancelado") == 1 ? "Acuse" : "Cancelar"  %>' ID="btnCancelarf" CommandArgument='<%#Eval("idventa") %>' />
                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnCancelarf" ConfirmText="¿Cancelar Documento?" Enabled='<%# (short)Eval("Cancelado") != 1  %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField  HeaderText="Seleccionar">
                <HeaderTemplate>
                    <asp:Button runat="server" ID="btnSelectAll" Text='<%# this.SelText %>' CommandName="SelectAll" />
                </HeaderTemplate>
                <ItemTemplate>
                    
                    <asp:CheckBox ID="cbChecked" runat="server" Checked='<%# (bool)Eval("Seleccionar") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
		</Columns>
	</asp:GridView> 
    </div>
	
   
	<asp:GridView ID="gvFacturaCustumer" Visible="False" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" />
			<asp:BoundField HeaderText="Fecha" DataField="fecha" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Cliente" DataField="Cliente" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:BoundField HeaderText="% I.V.A." DataField="PorcentajeIva" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="SubTotal" DataField="Subtotal" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
			<asp:BoundField HeaderText="I.V.A." DataField="IVA" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.V.A." DataField="RetIva" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Retención I.S.R." DataField="RetIsr" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="I.E.P.S." DataField="Ieps" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />

			<asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField HeaderText="Usuario" DataField="Usuario"/>
			<asp:BoundField HeaderText="Status" DataField="StatusFactura"/>
        </Columns>
    </asp:GridView>
    <br />
   
	<asp:ModalPopupExtender runat="server" ID="mpePagar" TargetControlID="btnpagarDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarPagar" PopupControlID="pnlPagar"/>
	<asp:Panel runat="server" ID="pnlPagar" BackColor="White" Width="600px" style="text-align: center;">
		<h1>Pagar Factura</h1>
		<asp:Label runat="server" ID="lblIdventa" Visible="False" />
		<asp:Label runat="server" ID="lblErrorPago" ForeColor="Red" />
	    No. de Folio: <asp:Label runat="server" ID="lblFolioPago" />
		<p>
			Fecha Pago: <asp:TextBox runat="server" ID="txtFechaPago" Text='<%# DateTime.Now %>' />
			<asp:CompareValidator runat="server" ID="cvFechaPago" ControlToValidate="txtFechaPago" Display="Dynamic" 
			 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" ValidationGroup="Pago" />
			<asp:CalendarExtender runat="server" ID="ceFechaPago" TargetControlID="txtFechaPago" PopupButtonID="txtFechaPago" Format="dd/MM/yyyy" />
			<asp:RequiredFieldValidator runat="server" ID="rfvFechaPago" ErrorMessage="* Requerido" ControlToValidate="txtFechaPago"
			 ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<p>
			Referencia: <asp:TextBox runat="server" ID="txtReferenciaPago" Width="300px" />
			<asp:RequiredFieldValidator runat="server" ID="rfvReferenciaPago" ErrorMessage="* Requerido"
			 ControlToValidate="txtReferenciaPago" ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<asp:Button runat="server" ID="btnPagar" class="btn btn-primary" Text="Pagar" onclick="btnPagar_Click" ValidationGroup="Pago" />&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarPagar" class="btn btn-primary" Text="Cancelar" 
            onclick="btnCerrarPagar_Click" />
		<br /><br />
	</asp:Panel>

	<asp:ModalPopupExtender runat="server" ID="mpeEmail" TargetControlID="btnEmailDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarEmail" PopupControlID="pnlEmail" />
	<asp:Panel runat="server" ID="pnlEmail" style="text-align: center;" Width="800px" BackColor="White">
		<h1>Direcciones de envio</h1>
		<asp:Label runat="server" ID="lblGuid" Visible="False" />
		<p>
			Se enviara a: <asp:Label runat="server" ID="lblEmailCliente" />
		</p>
		<p>
			Correos adicionales:
			<asp:TextBox runat="server" ID="txtEmails" Width="250px" />&nbsp;&nbsp;&nbsp;
			<span style="font-size: 8pt;">Separados por comas</span>
		</p>
		<br />
		<asp:Button runat="server" ID="btnEnviarEmail" class="btn btn-primary" Text="Enviar" onclick="btnEnviarMail_Click" />&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarEmail" class="btn btn-primary" Text="Cancelar" />
	</asp:Panel>
	<asp:Button runat="server" ID="btnEmailDummy" style="display: none;"/>
	<asp:Button runat="server" ID="btnPagarDummy" style="display: none;"/>
</asp:Content>
