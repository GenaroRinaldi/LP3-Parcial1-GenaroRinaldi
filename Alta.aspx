<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta.aspx.cs" Inherits="LP3_Parcial1_GenaroRinaldi.Alta" %>

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
            <h2>Alta de Producto</h2>
            <hr />
            <br />
            Nombre del Producto:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Precio:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Categoria:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="descripcion" DataValueField="idCategoria">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Retornar </asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-Parcial1ConnectionString %>" SelectCommand="SELECT * from categoria"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAlta" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-Parcial1ConnectionString %>" InsertCommand="INSERT into producto(nombre,precio,categoria) VALUES (@nombre,@precio,@categoria)" SelectCommand="SELECT * FROM [Categoria]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="precio" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="categoria" PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
