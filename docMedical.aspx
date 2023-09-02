<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="docMedical.aspx.cs" Inherits="New_Pet_System.docMedical" %>

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
                    <asp:BoundField DataField="Record_ID" HeaderText="Record ID" />
                    <asp:BoundField DataField="Pet_ID" HeaderText="Pet ID" />
                    <asp:BoundField DataField="Doc_ID" HeaderText="Doctor ID" />
                    <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" />
                    <asp:BoundField DataField="Prescription" HeaderText="Prescription" />
                    <asp:BoundField DataField="Medical_Notes" HeaderText="Medical Notes" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
