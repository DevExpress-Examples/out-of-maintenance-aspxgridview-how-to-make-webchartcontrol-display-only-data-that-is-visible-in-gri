Option Infer On

Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Xpo
Imports System.Collections.Generic

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected session1 As Session

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        ASPxGridView1.JSProperties("cpCallbackName") = String.Empty
    End Sub
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            Session("DataSource") = AccessDataSource1
        End If
        If TypeOf Session("DataSource") Is AccessDataSource Then
            WebChartControl1.DataSource = DirectCast(Session("DataSource"), AccessDataSource)
        Else
            WebChartControl1.DataSource = DirectCast(Session("DataSource"), List(Of DataRowView))
        End If
        WebChartControl1.DataBind()
    End Sub
    Protected Sub ASPxGridView1_AfterPerformCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewAfterPerformCallbackEventArgs)
        ASPxGridView1.JSProperties("cpCallbackName") = e.CallbackName
    End Sub
    Protected Sub WebChartControl1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.XtraCharts.Web.CustomCallbackEventArgs)
        Dim list = New List(Of DataRowView)()
        For i As Integer = 0 To ASPxGridView1.VisibleRowCount - 1
            If Not ASPxGridView1.IsGroupRow(i) Then
                list.Add(CType(ASPxGridView1.GetRow(i), DataRowView))
            End If
        Next i
        Session("DataSource") = list
        WebChartControl1.DataSource = list
        WebChartControl1.DataBind()
    End Sub
End Class
