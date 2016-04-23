<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Coordinador.aspx.vb" Inherits="PaginaRegistro.Coordinador" %>

<%@ Register src="CabececeraProfesor.ascx" tagname="CabececeraProfesor" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 355px">
    
        <uc1:CabececeraProfesor ID="CabececeraProfesor1" runat="server" />
        <br />
    
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 37px; top: 124px; position: absolute; height: 25px; width: 270px" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS21ConnectionString %>" SelectCommand="SELECT codigoasig FROM [GruposClase] INNER JOIN [ProfesoresGrupo]  ON codigo=codigogrupo WHERE email=@email">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 507px; top: 95px; position: absolute; font-weight: 700; height: 18px;" Visible="False"></asp:Label>
    
        <asp:GridView ID="gvAlum" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 507px; top: 123px; position: absolute; height: 203px; width: 380px; text-align: center" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 37px; top: 94px; position: absolute; font-weight: 700; height: 19px; right: 851px;" Text="Seleccionar Asignatura: "></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 37px; top: 205px; position: absolute; font-weight: 700;" Visible="False"></asp:Label>
    
        <asp:LinkButton ID="lbCerrarSesion" runat="server" style="z-index: 1; left: 37px; top: 265px; position: absolute; height: 19px; width: 133px">CERRAR SESION</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
