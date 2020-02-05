Public Class Welcome
    Inherits System.Web.UI.Page

    Public ReadOnly Property FirstName As String
        Get
            Return Request.Form("Firstname")
        End Get
    End Property

    Private Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim strFrom As String = ""
        Dim strTo As String = ""
        Dim strSubject As String = ""
        Dim strbody As String = ""

        If Not IsNothing(Request.UrlReferrer) Then
            strFrom = "gr@bigholler.com"
            strTo = "gr@bigholler.com"
            strSubject = "An order request from Bigholler"
            strbody = strbody & "Name: " & Request.Form("Firstname") & " " & Request.Form("Lastname") & "<br />"
            strbody = strbody & "Email Address: " & Request.Form("Email") & "<br />"
            strbody = strbody & "Password: " & Request.Form("Password") & "<br />"
            strbody = strbody & "<br />"
            strbody = strbody & "Plan: " & Request.Form("PaymentPlan") & "<br />"
            strbody = strbody & "<br />"
            If (Request.Form("PaymentType") = "ach") Then
                strbody = strbody & "Payment Method: ACH<br />"
                strbody = strbody & "<br />"
                strbody = strbody & "Bank Name: " & Request.Form("BankName") & "<br />"
                strbody = strbody & "Routing Number: " & Request.Form("RoutingNumber") & "<br />"
                strbody = strbody & "Account Number: " & Request.Form("AccountNumber") & "<br />"
            ElseIf (Request.Form("PaymentType") = "cc") Then
                strbody = strbody & "Payment Method: Credit Card<br />"
                strbody = strbody & "<br />"
                strbody = strbody & "Card Number: " & Request.Form("CardNumber") & "<br />"
                strbody = strbody & "Expiration Month: " & Request.Form("CardExpirationMonth") & "<br />"
                strbody = strbody & "Expiration Year: " & Request.Form("CardExpirationYear") & "<br />"
                strbody = strbody & "CVV: " & Request.Form("CardCVVCode") & "<br />"
                strbody = strbody & "Postal Code: " & Request.Form("PostalCode") & "<br />"
                strbody = strbody & "Country: " & Request.Form("CCardCountry") & "<br />"
            End If

            Try
                Dim objSendMailClass As New SendEmailClass.SendMailClass
                Call objSendMailClass.SendEmail(strFrom, strTo, strSubject, strbody)
            Catch ex As Exception
                Throw ex
            End Try
        End If

    End Sub
End Class