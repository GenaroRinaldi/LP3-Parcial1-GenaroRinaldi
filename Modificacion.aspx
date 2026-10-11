<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion.aspx.cs" Inherits="LP3_Parcial1_GenaroRinaldi.Modificacion" %>

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
            <h2>Modificacion de Producto</h2>
<hr />
            <br />
            Ingrese Codigo del producto a modificar:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-Parcial1ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3-Parcial1ConnectionString.ProviderName %>" SelectCommand="SELECT idProducto, nombre, precio, categoria FROM Producto WHERE (idProducto = @idProducto)" UpdateCommand="UPDATE producto set nombre = @nombre, precio = @precio, categoria = @categoria WHERE idProducto  = @idProducto">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="categoria" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            Nombre:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
&nbsp;<br />
            Precio:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Categoria:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="descripcion" DataValueField="idCategoria">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
<br />
<hr />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Retornar </asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-Parcial1ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3-Parcial1ConnectionString.ProviderName %>" SelectCommand="SELECT idCategoria, descripcion FROM Categoria"></asp:SqlDataSource>
    </form>
</body>
</html>
