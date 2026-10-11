<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="LP3_Parcial1_GenaroRinaldi.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tienda de Ropa "FULANITO"</h1>
            <h2>Consulta de Producto</h2>
<hr />
            <br />
            Ingrese Codigo de la prenda:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
<br />
<hr />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Retornar </asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-Parcial1ConnectionString %>" SelectCommand="SELECT prod.nombre, prod.precio, cat.descripcion AS categoria FROM Producto AS prod INNER JOIN Categoria AS cat ON cat.idCategoria = prod.categoria WHERE (prod.idProducto = @idProducto)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
