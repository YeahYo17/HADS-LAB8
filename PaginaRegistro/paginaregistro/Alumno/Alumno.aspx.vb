Public Class Alumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

        Dim listaLoginP As List(Of String) = Application("ListaProf")
        Dim listaLoginA As List(Of String) = Application("ListaAlum")

        txtProf.Text = " Profesores Conectados: " & listaLoginP.Count & vbCrLf & "--------------------------" & vbCrLf

        For Each profEmail In Application("ListaProf")
            txtProf.Text = txtProf.Text & profEmail & vbCrLf
        Next

        txtAlum.Text = " Alumnos Conectados: " & listaLoginA.Count & vbCrLf & "--------------------------" & vbCrLf

        For Each alumEmail In Application("ListaAlum")
            txtAlum.Text = txtAlum.Text & alumEmail & vbCrLf
        Next

        Threading.Thread.Sleep(1000)
    End Sub

    Protected Sub lbCerrarSesion_Click(sender As Object, e As EventArgs) Handles lbCerrarSesion.Click

        Dim user As String
        user = Session("email").ToString

        Dim listaLoginA As List(Of String) = Application("ListaAlum")

        listaLoginA.Remove(user)
        Application("ListaAlum") = listaLoginA

        ' --- Desconectarse ---
        System.Web.Security.FormsAuthentication.SignOut()

        Response.Redirect("../Inicio.aspx")
    End Sub

End Class