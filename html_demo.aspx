<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="html_demo.aspx.cs" Inherits="New_Pet_System.html_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="studentTable" width="100%" align="center" cellpadding="2" cellspacing="2" border="0" bgcolor="#EAEAEA" >  
                    <tr align="left" style="background-color:#004080;color:White;" >  
                        <td>StudentId</td>  
                        <td>Name </td>  
                        <td>EmailAddress</td>  
                        <td>Gender</td>  
                    </tr><%=getStudentData()%>  
                </table>  
        </div>
    </form>
</body>
</html>
