Public Class DailyReflection
    Inherits System.Web.UI.Page


    'Partial Class MemberPages_DailyReflection
    'Inherits System.Web.UI.Page



    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
            Dim User As String

            'create connection object
            Dim con As New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("DailyReflectionConnectionString").ConnectionString)

            'open connection
            con.Open()


            'create command object
            Dim cmd = New Data.SqlClient.SqlCommand


            cmd.CommandText = "INSERT INTO DailyReflection VALUES (@UserName, @ClassNum, @CurrentCourse, @CurrentWeek, @GoalSuccess, @RatePacing, @TomGroup, @StudentNeed, @RateSuccess, @CreatedDate )"


            'set connection property of command object
            cmd.Connection = con

            'set up parameters to use with SQL statement
            cmd.Parameters.AddWithValue("UserName", Session("UserName"))
            cmd.Parameters.AddWithValue("@ClassNum", CInt(ClassNum.SelectedValue))
            cmd.Parameters.AddWithValue("@CurrentCourse", CurrentCourse.SelectedValue)
            cmd.Parameters.AddWithValue("@CurrentWeek", CurrentWeek.SelectedValue)

            If GoalSuccess.SelectedValue = "Yes" Then
                cmd.Parameters.AddWithValue("@GoalSuccess", 1)
            Else
                cmd.Parameters.AddWithValue("@GoalSuccess", 0)
            End If

            cmd.Parameters.AddWithValue("@RatePacing", RatePacing.SelectedValue)

            cmd.Parameters.AddWithValue("@TomGroup", TomGroup.SelectedValue)
            cmd.Parameters.AddWithValue("@StudentNeed", StudentNeed.SelectedValue)

            If RateSuccess.SelectedValue = "Yes" Then
                cmd.Parameters.AddWithValue("@RateSuccess", 1)
            Else
                cmd.Parameters.AddWithValue("@RateSuccess", 0)
            End If

            cmd.Parameters.Add("@CreatedDate", Data.SqlDbType.DateTime)
            cmd.Parameters("@CreatedDate").Value = Now()



            'execute SQL statement. nrecs is the number of records affected.
            Dim nrecs As Integer = cmd.ExecuteNonQuery()

            If nrecs = 1 Then
                lblSaveStatus.Text = "Record was successfully saved."
                lblSaveStatus.Visible = True
            Else
                lblSaveStatus.Text = "Unable to save record."
                lblSaveStatus.Visible = True
            End If

            'close connection
            con.Close()
        End Sub






    End Class