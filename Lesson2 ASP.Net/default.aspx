<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lesson2_ASP.Net._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblFirstname" runat="server"></asp:Label>
        <asp:Literal ID="ltlFirstname" runat="server" ></asp:Literal>
        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Click Me" OnClick="btnSubmit_Click" /> 
        <asp:Label ID="lblX" runat="server" Visible="false"></asp:Label>
    </div>
        <div>
            <asp:Literal ID="ltlToppings" runat="server" />
            <asp:DropDownList runat="server" ID="ddlCountry">
                <asp:ListItem Value="1" Text="Canada"></asp:ListItem>
                <asp:ListItem Value="2" Text="Brazile"></asp:ListItem>
                <asp:ListItem Value="3" Text="India"></asp:ListItem>
            </asp:DropDownList>
            <asp:CheckBoxList runat="server" ID="cblToppings">
                <asp:ListItem Value="1" Text="Pepporini"></asp:ListItem>
                <asp:ListItem Value="2" Text="Mushrooms"></asp:ListItem>
                <asp:ListItem Value="3" Text="Banana"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button runat="server" ID="btnSelections" Text="Show Selections" OnClick="btnSelections_Click" />
        </div>
    </form>
</body>
</html>
