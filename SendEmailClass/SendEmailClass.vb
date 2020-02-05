Imports System.Net.Mail

Public Class SendMailClass
    Public Sub SendEmail(ByVal strFrom As String, ByVal strTo As String, ByVal strSubject As String, ByVal strBody As String)
        'Create the mail message
        Dim msgObj As New MailMessage With {
            .From = New MailAddress(strFrom),
            .Subject = strSubject,
            .Body = strBody,
            .IsBodyHtml = True
        }

        'We split and loop through the emails to verify no blanks are added in the mix.
        Dim arToAddresses() As String = Split(strTo, ",")
        For Each strToAddress As String In arToAddresses
            If Trim(strToAddress) <> "" Then
                msgObj.To.Add(strToAddress)
            End If
        Next

        'Get the mail server. 
        Dim smtpObj As New System.Net.Mail.SmtpClient With {
            .Host = "mail.bigholler.com",
            .Port = 25
        }
        smtpObj.Send(msgObj)
    End Sub
End Class
