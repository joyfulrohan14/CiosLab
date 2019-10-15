<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Login - Fall 2011</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p class="MsoNormal" style="text-align: center; mso-pagination: none">
            <span style="font-weight: bold; font-size: 20pt; color: #ff6600; font-family: Arial;
                mso-default-font-family: Arial; mso-ascii-font-family: Arial; mso-latin-font-family: Arial;
                mso-greek-font-family: Arial; mso-cyrillic-font-family: Arial; mso-armenian-font-family: Arial;
                mso-hebrew-font-family: Arial; mso-arabic-font-family: Arial; mso-currency-font-family: Arial;
                mso-latinext-font-family: Arial; language: EN; mso-ansi-language: EN; mso-bidi-language: AR-SA">
                CMSC 635: KNOWLEDGE DISCOVERY &amp; DATA MINING<?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                    prefix="o" ?><o:p></o:p></span></p>
        <p class="MsoNormal" style="text-align: center; mso-pagination: none">
            <span style="font-weight: bold; font-size: 18pt; font-family: Arial; mso-default-font-family: Arial;
                mso-ascii-font-family: Arial; mso-latin-font-family: Arial; mso-greek-font-family: Arial;
                mso-cyrillic-font-family: Arial; mso-armenian-font-family: Arial; mso-hebrew-font-family: Arial;
                mso-arabic-font-family: Arial; mso-currency-font-family: Arial; mso-latinext-font-family: Arial;
                language: EN; mso-ansi-language: EN; mso-bidi-language: AR-SA">Fall 2011</span></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial">Please input your ID here (8 digits e.g 
            : 12345678) and press
                ENTER key</span></strong></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial"> <asp:TextBox ID="txtID" 
                runat="server" BorderColor="#FF8080" BorderStyle="Solid"
                    BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="14pt" Height="20px"
                    Width="200px" TextMode="Password">V</asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></strong></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial"></span></strong><span style="font-size: 14pt">
            Please input your V-number in above textbox for logging course's website,..</span></p>
    
    </div>
    <asp:AccessDataSource ID="Student" runat="server" DataFile="Fall2011.mdb" 
        SelectCommand="Select ID from Fall2011 where ID=?">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtID" Name="?" PropertyName="Text" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="Student" 
        onrowcreated="checking">
    </asp:GridView>
    </form>
</body>
</html>
