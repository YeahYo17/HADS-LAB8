Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("GridView1") = GridView1
    End Sub

    Protected Sub btnInsertar_Click(sender As Object, e As EventArgs) Handles btnInsertar.Click
        Response.Redirect("InsertarTarea.aspx")
    End Sub

    Protected Sub listaAsig_SelectedIndexChanged(sender As Object, e As EventArgs) Handles listaAsig.SelectedIndexChanged

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