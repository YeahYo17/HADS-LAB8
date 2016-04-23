Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class ServCoordinador
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function DedicacionMediaAsignatura(ByVal asig As String) As Integer

        Dim Conexion As New SqlClient.SqlConnection
        Conexion.ConnectionString = "Server=tcp:hads21.database.windows.net,1433;Database=HADS21;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;MultipleActiveResultSets=true"

        Dim dAdapter As New SqlClient.SqlDataAdapter
        dAdapter.SelectCommand = New SqlClient.SqlCommand("SELECT HReales FROM EstudiantesTareas INNER JOIN TareasGenericas ON CodTarea=Codigo WHERE CodAsig='" & asig & "'", Conexion)

        Dim dSet As New DataSet
        Dim dTable As New DataTable

        dAdapter.Fill(dSet, "HorasReales")
        dTable = dSet.Tables("HorasReales")

        Dim SumaHoras As Integer = 0
        Dim cont As Integer = 0

        Dim dRow As DataRow = dTable.NewRow

        While cont < dTable.Rows.Count
            dRow = dTable.Rows.Item(cont)
            SumaHoras = SumaHoras + dRow("HReales")
            cont = cont + 1
        End While

        Return SumaHoras / cont

    End Function

    <WebMethod()> _
    Public Function AlumnosAsig(ByVal asig As String) As DataTable

        Dim Conexion As New SqlClient.SqlConnection
        Conexion.ConnectionString = "Server=tcp:hads21.database.windows.net,1433;Database=HADS21;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;MultipleActiveResultSets=true"

        Dim dAdapter As New SqlClient.SqlDataAdapter
        dAdapter.SelectCommand = New SqlClient.SqlCommand("SELECT DISTINCT Email FROM EstudiantesTareas INNER JOIN TareasGenericas ON CodTarea=Codigo WHERE CodAsig='" & asig & "'", Conexion)

        Dim dSet As New DataSet
        Dim dTable As New DataTable

        dAdapter.Fill(dSet, "Alumnos")
        dTable = dSet.Tables("Alumnos")

        Return dTable

    End Function

End Class