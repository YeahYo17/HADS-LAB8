﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.42000
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Namespace ServCoord
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="ServCoord.ServCoordinadorSoap")>  _
    Public Interface ServCoordinadorSoap
        
        'CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento asig del espacio de nombres http://tempuri.org/ no está marcado para aceptar valores nil.
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/DedicacionMediaAsignatura", ReplyAction:="*")>  _
        Function DedicacionMediaAsignatura(ByVal request As ServCoord.DedicacionMediaAsignaturaRequest) As ServCoord.DedicacionMediaAsignaturaResponse
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced),  _
     System.ServiceModel.MessageContractAttribute(IsWrapped:=false)>  _
    Partial Public Class DedicacionMediaAsignaturaRequest
        
        <System.ServiceModel.MessageBodyMemberAttribute(Name:="DedicacionMediaAsignatura", [Namespace]:="http://tempuri.org/", Order:=0)>  _
        Public Body As ServCoord.DedicacionMediaAsignaturaRequestBody
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal Body As ServCoord.DedicacionMediaAsignaturaRequestBody)
            MyBase.New
            Me.Body = Body
        End Sub
    End Class
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced),  _
     System.Runtime.Serialization.DataContractAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class DedicacionMediaAsignaturaRequestBody
        
        <System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue:=false, Order:=0)>  _
        Public asig As String
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal asig As String)
            MyBase.New
            Me.asig = asig
        End Sub
    End Class
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced),  _
     System.ServiceModel.MessageContractAttribute(IsWrapped:=false)>  _
    Partial Public Class DedicacionMediaAsignaturaResponse
        
        <System.ServiceModel.MessageBodyMemberAttribute(Name:="DedicacionMediaAsignaturaResponse", [Namespace]:="http://tempuri.org/", Order:=0)>  _
        Public Body As ServCoord.DedicacionMediaAsignaturaResponseBody
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal Body As ServCoord.DedicacionMediaAsignaturaResponseBody)
            MyBase.New
            Me.Body = Body
        End Sub
    End Class
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced),  _
     System.Runtime.Serialization.DataContractAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class DedicacionMediaAsignaturaResponseBody
        
        <System.Runtime.Serialization.DataMemberAttribute(Order:=0)>  _
        Public DedicacionMediaAsignaturaResult As Integer
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal DedicacionMediaAsignaturaResult As Integer)
            MyBase.New
            Me.DedicacionMediaAsignaturaResult = DedicacionMediaAsignaturaResult
        End Sub
    End Class
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface ServCoordinadorSoapChannel
        Inherits ServCoord.ServCoordinadorSoap, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class ServCoordinadorSoapClient
        Inherits System.ServiceModel.ClientBase(Of ServCoord.ServCoordinadorSoap)
        Implements ServCoord.ServCoordinadorSoap
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        <System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)>  _
        Function ServCoord_ServCoordinadorSoap_DedicacionMediaAsignatura(ByVal request As ServCoord.DedicacionMediaAsignaturaRequest) As ServCoord.DedicacionMediaAsignaturaResponse Implements ServCoord.ServCoordinadorSoap.DedicacionMediaAsignatura
            Return MyBase.Channel.DedicacionMediaAsignatura(request)
        End Function
        
        Public Function DedicacionMediaAsignatura(ByVal asig As String) As Integer
            Dim inValue As ServCoord.DedicacionMediaAsignaturaRequest = New ServCoord.DedicacionMediaAsignaturaRequest()
            inValue.Body = New ServCoord.DedicacionMediaAsignaturaRequestBody()
            inValue.Body.asig = asig
            Dim retVal As ServCoord.DedicacionMediaAsignaturaResponse = CType(Me,ServCoord.ServCoordinadorSoap).DedicacionMediaAsignatura(inValue)
            Return retVal.Body.DedicacionMediaAsignaturaResult
        End Function
    End Class
End Namespace