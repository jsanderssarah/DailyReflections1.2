Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login1_Authenticate(sender As Object, e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        If e.Authenticated Then

            Session("UserName") = Login1.UserName

            If Login1.UserName = "admin" Then
                Server.Transfer("~\MembersPage\AdminData.aspx")
            ElseIf Login1.UserName = "AdminUsers" Then
                Server.Transfer("~\MembersPage\Register.aspx")
            Else
                Response.Redirect("~\MembersPage\DailyReflection.aspx")
                Login1.UserName = ""
            End If
        Else
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class