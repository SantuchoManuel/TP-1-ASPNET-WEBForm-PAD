<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Página de contacto.</h3>
    <address>
        Calle siempreviva<br />
        al lado de unlado<br />
        <abbr title="Phone">Telefono:</abbr>
        555.555.555
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">manuel@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">joel@example.com</a>
    </address>
</asp:Content>
