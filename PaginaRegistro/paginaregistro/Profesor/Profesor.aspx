<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="PaginaRegistro.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 700px;
            width: 1320px;
        }
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 754px; width: 1350px;">
    <form id="form1" runat="server">
        <asp:HyperLink ID="hlMenuAlum" runat="server" NavigateUrl="~/Alumno/Alumno.aspx" style="z-index: 3; left: 533px; top: 493px; position: absolute; height: 20px; width: 100px">Menu Alumnos</asp:HyperLink>
        <br />
        <asp:Panel ID="Panel1" runat="server" style="text-align: center; background-color: #3366CC; z-index: 1; left: 21px; top: 34px; position: absolute; height: 500px; width: 178px;" Width="170px" BorderStyle="Inset">
            <strong style="position: relative">
            <br />
            <br />
            <asp:HyperLink ID="hlAsig" runat="server" style="text-align: left; color: #FFFFFF;">Asignaturas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlTareas" runat="server" NavigateUrl="~/Profesor/TareasProfesor.aspx" style="text-align: left; color: #FFFFFF;">Tareas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlGrupos" runat="server" style="text-align: left; color: #FFFFFF;">Grupos</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlImpXMLDoc" runat="server" NavigateUrl="~/Profesor/InsertarTareaXMLDocument.aspx" style="text-align: left; color: #FFFFFF;">Importar y, XMLDocument</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlExp" runat="server" NavigateUrl="~/Profesor/Exportar.aspx" style="text-align: left; color: #FFFFFF;">Exportar</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlImpDS" runat="server" NavigateUrl="~/Profesor/InsertarTareaDataSet.aspx" style="text-align: left; color: #FFFFFF;">Importar y, DataSet</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            </strong>
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Inset" HorizontalAlign="Center" style="z-index: -1; left: 218px; top: 34px; position: absolute; height: 500px; width: 729px; text-align: center; margin-top: 0px; background-color: #99CCFF">
            <strong><span class="auto-style1">
            <br style="z-index: 1; left: 364px; top: 0px; position: absolute" />
            <br />
            <br />
            Gestion Web de Tareas-Dedicacion<br />
            <br />
            Profesores</span></strong></asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="z-index: 4; left: 989px; top: 36px; position: absolute; height: 663px; width: 297px">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="txtProf" runat="server" Height="175px" style="margin-top: 0px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtAlum" runat="server" Height="175px" style="margin-top: 0px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl="~/Profesor/Imagenes/cargando-loading-045.gif" Width="241px" />
                        &nbsp;
                    </ProgressTemplate>
            </asp:UpdateProgress>
        </asp:Panel>
        <asp:LinkButton ID="lbCerrarSesion" runat="server" style="z-index: 1; left: 44px; top: 493px; position: absolute; height: 19px; width: 133px">CERRAR SESION</asp:LinkButton>
    </form>
    </body>
</html>
