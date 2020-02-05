Public Class Thankyou
    Inherits System.Web.UI.Page

    Public ReadOnly Property FirstName As String
        Get
            Return Request.Form("Name")
        End Get
    End Property

    Private Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim strFrom As String = ""
        Dim strTo As String = ""
        Dim strSubject As String = ""
        Dim strbody As String = ""

        If Not IsNothing(Request.UrlReferrer) Then
            strFrom = "noreply@bigholler.com"
            strbody = strbody & "Name: " & Request.Form("Name") & "<br />"
            If Request.UrlReferrer.AbsoluteUri.Contains("contact-support") Then
                strTo = "support@bigholler.com"
                strSubject = "A new support request from Bigholler"
                strbody = strbody & "Restaurant: " & Request.Form("Restaurant") & "<br />"
            ElseIf Request.UrlReferrer.AbsoluteUri.Contains("contact-sales") Then
                strTo = "gr@bigholler.com"
                strSubject = "A new sales request from Bigholler"
                strbody = strbody & "Restaurant: " & Request.Form("Restaurant") & "<br />"
            ElseIf Request.UrlReferrer.AbsoluteUri.Contains("contact-partners") Then
                strTo = "gr@bigholler.com"
                strSubject = "A new partners request from Bigholler"
                strbody = strbody & "Company: " & Request.Form("Company") & "<br />"
            Else
                strTo = "gr@bigholler.com"
                strSubject = "A new reseller request from Bigholler"
                strbody = strbody & "Current Occupation: " & Request.Form("Current Occupation") & "<br />"
            End If
            strbody = strbody & "Email: " & Request.Form("Email") & "<br />"
            strbody = strbody & "Phone:" & Request.Form("Phone") & "<br />"
            strbody = strbody & "Comments:" & Request.Form("Description") & "<br />"

            Try
                Dim objSendMailClass As New SendEmailClass.SendMailClass
                Call objSendMailClass.SendEmail(strFrom, strTo, strSubject, strbody)
            Catch ex As Exception
                Throw ex
            End Try
        End If

    End Sub

End Class