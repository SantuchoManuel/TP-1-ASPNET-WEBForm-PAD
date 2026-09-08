<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Alta.aspx.cs" Inherits="Alta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registrar Nuevo Pedido</h2>
    <hr />

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Nombre del Cliente:</label>
                <asp:TextBox ID="txtCliente" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqCliente" runat="server" ControlToValidate="txtCliente" 
                    ErrorMessage="* El nombre es obligatorio." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Producto a comprar:</label>
                <asp:TextBox ID="txtProducto" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqProducto" runat="server" ControlToValidate="txtProducto" 
                    ErrorMessage="* El producto es obligatorio." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Cantidad:</label>
                <asp:TextBox ID="TextCantidad" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextCantidad" 
                    ErrorMessage="* La cantidad es obligatoria." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnGuardar" runat="server" Text="Realizar Alta" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
            <br /><br />
            <asp:Label ID="lblMensaje" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </div>
</asp:Content>
