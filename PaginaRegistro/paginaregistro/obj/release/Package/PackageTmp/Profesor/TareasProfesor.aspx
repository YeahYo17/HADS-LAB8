<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="PaginaRegistro.WebForm1" %>

<%@ Register src="CabececeraProfesor.ascx" tagname="CabececeraProfesor" tagprefix="uc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <uc1:CabececeraProfesor ID="CabececeraProfesor1" runat="server" />
    
    <form id="form1" runat="server">
    <div style="height: 643px; width: 1306px;">
    
        <asp:Panel ID="Panel2" runat="server" Height="500px" style="margin-top: 0px; margin-right: 0px;" Width="550px" BorderColor="#3366CC" BorderWidth="2px">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <strong>Seleccionar Asignatura:</strong><br />
                    <asp:DropDownList ID="listaAsig" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig" Height="20px" Width="275px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=tcp:hads21.database.windows.net,1433;Initial Catalog=HADS21;Persist Security Info=True;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigoasig FROM [GruposClase] INNER JOIN [ProfesoresGrupo]  ON codigo=codigogrupo WHERE email=@email">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="" Name="email" SessionField="email" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="btnInsertar" runat="server" style="text-align: left; z-index: 1; left: 825px; top: 69px; position: absolute;" Text="Insertar Nueva Tarea" Width="250px" />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" style="text-align: left">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                            <asp:BoundField DataField="CodAsig" HeaderText="CodAsig" SortExpression="CodAsig" />
                            <asp:CheckBoxField DataField="Explotacion" HeaderText="Explotacion" SortExpression="Explotacion" />
                        </Columns>
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HADS21ConnectionString %>" SelectCommand="SELECT [Descripcion], [Codigo], [CodAsig], [Explotacion] FROM [TareasGenericas] WHERE ([CodAsig] = @CodAsig)" UpdateCommand="UPDATE [TareasGenericas] SET [Descripcion]=@Descripcion, [CodAsig]=@CodAsig, [Explotacion]=@Explotacion WHERE ([Codigo]=@Codigo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="listaAsig" Name="CodAsig" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Descripcion" />
                            <asp:Parameter Name="codAsig" />
                            <asp:Parameter Name="Explotacion" />
                            <asp:Parameter Name="Codigo" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:LinkButton ID="lbCerrarSesion" runat="server" style="z-index: 1; left: 1127px; top: 70px; position: absolute; height: 19px; width: 133px">CERRAR SESION</asp:LinkButton>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
        <ajaxToolkit:DragPanelExtender ID="Panel2_DragPanelExtender" runat="server" BehaviorID="Panel2_DragPanelExtender" DragHandleID="Panel2" TargetControlID="Panel2" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
