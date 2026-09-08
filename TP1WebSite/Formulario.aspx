<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Formulario.aspx.cs" Inherits="Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Listado de Productos</h2>
    <div style="margin-bottom: 20px;">
        Buscar por nombre: 
        <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" style="display:inline-block; width: 250px;"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
    </div>
    <asp:GridView ID="GridProductos" runat="server" CssClass="table table-striped table-bordered" 
        EmptyDataText="No se encontraron productos." AutoGenerateColumns="False" DataKeyNames="IdProducto" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="IdProducto" HeaderText="IdProducto" InsertVisible="False" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Productos] WHERE ([Nombre] LIKE '%' + @Nombre + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtBuscar" Name="Nombre" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
</asp:Content>

