Public Class AdminData
    Inherits System.Web.UI.Page

    Protected Sub SubmitBtn_Click(sender As Object, e As EventArgs) Handles SubmitBtn.Click
        If EntryDate.Text = "1/1/2000" Then
            SqlDataSource1.SelectCommand = "SELECT * FROM [DailyReflection] WHERE CreatedDate > '6/1/2017' And CreatedDate < '12/1/2017' ORDER BY [ClassNum], [CurrentCourse], [CurrentWeek]"
        Else
            SqlDataSource1.SelectCommand = "SELECT * FROM [DailyReflection] " &
            "WHERE CreatedDate >= '" & CDate(EntryDate.Text) & "' And CreatedDate < '" & CDate(EntryDate.Text).AddDays(1) & "' ORDER BY [ClassNum], [CurrentCourse], [CurrentWeek]"
        End If
    End Sub

End Class