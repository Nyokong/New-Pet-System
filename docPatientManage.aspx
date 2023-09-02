<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="docPatientManage.aspx.cs" Inherits="New_Pet_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<asp:GridView runat="server"></asp:GridView>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:BoundField DataField="PatientID" HeaderText="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
