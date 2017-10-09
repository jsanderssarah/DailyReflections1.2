Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ContinueButtonClick(sender As Object, e As EventArgs) Handles CreateUserWizard1.ContinueButtonClick
        Server.Transfer("../login.aspx")
    End Sub

End Class