<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="WebApplication4.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Daily Reflection Login</title>
    <style type="text/css">
      .body{
        top: 100px;
        margin-right: auto;
	    margin-left: auto;
/*	    position: absolute;
	    left:205px;  */
	    top:20px;
	    width: 700px;
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
<body class="body">
    <form id="form1" runat="server">
    <div>
        <h3 class="LgInHead">Login Page</h3>
        <p>
           
        <p class="LgInHead">&nbsp;</p>
       </div>  
    <div style="text-align: center;">
        <div style="width: 263px; margin-left: auto; margin-right: auto;">
        <p class="LgInBox">
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Width="275px">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
        </p>
        </div>
    </div>
    </form>
</body>
</html>
