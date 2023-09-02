<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="docAppointment.aspx.cs" Inherits="New_Pet_System.docAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:BoundField DataField="Appointment_ID" HeaderText="Appointment ID" />
                    <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" />
                    <asp:BoundField DataField="Pet_ID" HeaderText="Pet ID" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="App_Date" HeaderText="Appointment Date" />
                    <asp:BoundField DataField="App_Time" HeaderText="Appointment Time" />
                    <asp:BoundField DataField="App_Status" HeaderText="Appointment Status" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
