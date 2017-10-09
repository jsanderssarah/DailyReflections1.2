<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DailyReflection.aspx.vb" Inherits="WebApplication4.DailyReflection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      body{
        top: 100px;
        margin-right: auto;
	    margin-left: auto;
/*	    position: absolute;
	    left:205px;  */
	    top:20px;
	    width: 720px;
	    padding: 30px;
	    border-width: thick;
	    border-style: double;
  /*	    background-color: #E0E0E0;	*/
         background-color: #FFFFFF;
/*	    font-family: Verdana;*/
        font-family: Arial;
	    font-size: 0.9em;
	    font-weight: normal;	
	    }
      .LgInHead{
          text-align: center;
      }
	    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Daily Reflection</h1>
        <p>
            &nbsp;</p>
        <p>
            1. Class period: <asp:DropDownList ID="ClassNum" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem Value="5"></asp:ListItem>
                <asp:ListItem Value="7"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Select value" ControlToValidate="ClassNum" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>

    </div>
        <p>
            2. What course are you working on?
            <asp:DropDownList ID="CurrentCourse" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>Programming Foundations with JavaScript, HTML and CSS</asp:ListItem>
                <asp:ListItem>Java Programming: Solving Problems with Software</asp:ListItem>
                <asp:ListItem>Jave Programming: Arrays, Lists, and Structured Data</asp:ListItem>
                <asp:ListItem>Java Programming: Principles or Software Design</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Select value" ControlToValidate="CurrentCourse" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>
        </p>
        <p>
            3.&nbsp; Today I did work from <asp:DropDownList ID="CurrentWeek" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>Week 1</asp:ListItem>
                <asp:ListItem>Week 2</asp:ListItem>
                <asp:ListItem>Week 3</asp:ListItem>
                <asp:ListItem>Week 4</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Select value" ControlToValidate="CurrentWeek" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>
        <p>
            4.&nbsp; Did you reach your goal today?&nbsp;
            <asp:DropDownList ID="GoalSuccess" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Select value" ControlToValidate="GoalSuccess" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>
        <p>
            5.&nbsp; Today I stayed on track
            <asp:DropDownList ID="RatePacing" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>all of the time. </asp:ListItem>
                <asp:ListItem>some of the time.</asp:ListItem>
                <asp:ListItem>very little.</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Select value" ControlToValidate="RatePacing" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>
        <p>
            6.&nbsp; To be successful, tomorrow I should work
            <asp:DropDownList ID="TomGroup" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>with the teacher.</asp:ListItem>
                <asp:ListItem>with a partner.</asp:ListItem>
                <asp:ListItem>independently.</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Select value" ControlToValidate="TomGroup" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>
        <p>
            7. The thing that I need most to be successful is
            <asp:DropDownList ID="StudentNeed" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>help from the teacher.</asp:ListItem>
                <asp:ListItem>clearer directions.</asp:ListItem>
                <asp:ListItem>help with my computer or headphones.</asp:ListItem>
                <asp:ListItem>help from a classmate.</asp:ListItem>
                <asp:ListItem>more time.</asp:ListItem>
                <asp:ListItem>to sit in a different area.</asp:ListItem>
                <asp:ListItem>more work.</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Select value" ControlToValidate="StudentNeed" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>
        <p>
            8.&nbsp; I feel good about the work I did today.
            <asp:DropDownList ID="RateSuccess" runat="server">
                <asp:ListItem>Choose one:</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Select value" ControlToValidate="RateSuccess" Font-Bold="True" ForeColor="Red" ValueToCompare="Choose one:" Operator="NotEqual"></asp:CompareValidator>

        </p>

        <p>
            &nbsp;</p>

        <asp:Button ID="btnSave" runat="server" Text="Save" />

        <p>
            <asp:Label ID="lblSaveStatus" runat="server" Text="Record was successfully saved." Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
