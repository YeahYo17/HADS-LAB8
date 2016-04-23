Public Class Coordinador
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then

            DropDownList1.DataBind()
            DropDownList1.Items.Add("- Seleccionar Asignatura -")
            DropDownList1.SelectedIndex = -1
            DropDownList1.Items.FindByText("- Seleccionar Asignatura -").Selected = True

        Else

        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        If DropDownList1.Items.FindByText("- Seleccionar Asignatura -").Selected = True Then
            Label2.Visible = False
            Label3.Visible = False
            gvAlum.Visible = False
        Else

            ' --- Servicio Web Remoto: servwebhads.azurewebsites.net/ServCoordinador.asmx?wsdl
            Dim swCoord As New ServCoordWeb.ServCoordinador

            ' --- Servicio Web Local---
            'Dim swCoord As New ServCoord.ServCoordinadorSoapClient

            Label2.Text = "Horas Dedicacion Media: " & swCoord.DedicacionMediaAsignatura(DropDownList1.SelectedValue)
            Label2.Visible = True

            Dim dTable As New DataTable

            dTable = swCoord.AlumnosAsig(DropDownList1.SelectedValue)

            Label3.Text = "Alumnos Asignatura " & DropDownList1.SelectedValue & ":"
            Label3.Visible = True

            gvAlum.DataSourceID = Nothing
            gvAlum.DataSource = dTable
            gvAlum.DataBind()
            gvAlum.Visible = True

        End If

    End Sub

    Protected Sub lbCerrarSesion_Click(sender As Object, e As EventArgs) Handles lbCerrarSesion.Click

        Dim user As String
        user = Session("email").ToString

        Dim listaLoginP As List(Of String) = Application("ListaProf")

        listaLoginP.Remove(user)
        Application("ListaProf") = listaLoginP

        ' --- Desconectarse ---
        System.Web.Security.FormsAuthentication.SignOut()

        Response.Redirect("../Inicio.aspx")
    End Sub

End Class