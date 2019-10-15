<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Grade.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Grades - Fall 2010</title>
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
                language: EN; mso-ansi-language: EN; mso-bidi-language: AR-SA">Fall 2010</span></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial">Please input your ID here (V number) and press
                ENTER key</span></strong></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial"> <asp:TextBox ID="txtID" runat="server" BorderColor="#FF8080" BorderStyle="Solid"
                    BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="14pt" Height="20px"
                    Width="200px">V</asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></strong></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial"></span></strong><span style="font-size: 14pt">
            Please input your V-number in above textbox for checking your email address, project's
            grade, homework's grade, midterm's grade,..</span></p>
        <p style="text-align: center">
            &nbsp;</p>
        <p>
            <strong><span style="font-family: Arial">
                <asp:AccessDataSource ID="DataSource" runat="server" DataFile="Fall2010.mdb"
                    SelectCommand="SELECT * FROM [Fall2010] WHERE ([ID] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtID" DefaultValue="" Name="ID" PropertyName="Text"
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                &nbsp;</span></strong></p>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="DataSource" OnPageIndexChanging="FormView1_PageIndexChanging" Height="488px" Width="724px">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>'>
                </asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'>
                </asp:TextBox><br />
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Midterm1:
                <asp:TextBox ID="Midterm1TextBox" runat="server" Text='<%# Bind("Midterm1") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Midterm2:
                <asp:TextBox ID="Midterm2TextBox" runat="server" Text='<%# Bind("Midterm2") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Homework1:
                <asp:TextBox ID="Homework1TextBox" runat="server" Text='<%# Bind("Homework1") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Homework2:
                <asp:TextBox ID="Homework2TextBox" runat="server" Text='<%# Bind("Homework2") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                ProjectProgress:
                <asp:TextBox ID="ProjectProgressTextBox" runat="server" Text='<%# Bind("ProjectProgress") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                ProjectPresent:
                <asp:TextBox ID="ProjectPresentTextBox" runat="server" Text='<%# Bind("ProjectPresent") %>'>
                </asp:TextBox><br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                Total:
                <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>'>
                </asp:TextBox><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Grade:
                <asp:TextBox ID="GradeTextBox" runat="server" Text='<%# Bind("Grade") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>'>
                </asp:TextBox><br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>'>
                </asp:TextBox><br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'>
                </asp:TextBox><br />
                Midterm1:
                <asp:TextBox ID="Midterm1TextBox" runat="server" Text='<%# Bind("Midterm1") %>'>
                </asp:TextBox><br />
                Midterm2:
                <asp:TextBox ID="Midterm2TextBox" runat="server" Text='<%# Bind("Midterm2") %>'>
                </asp:TextBox><br />
                Homework1:
                <asp:TextBox ID="Homework1TextBox" runat="server" Text='<%# Bind("Homework1") %>'>
                </asp:TextBox><br />
                Homework2:
                <asp:TextBox ID="Homework2TextBox" runat="server" Text='<%# Bind("Homework2") %>'>
                </asp:TextBox><br />
                ProjectProgress:
                <asp:TextBox ID="ProjectProgressTextBox" runat="server" Text='<%# Bind("ProjectProgress") %>'>
                </asp:TextBox><br />
                ProjectPresent:
                <asp:TextBox ID="ProjectPresentTextBox" runat="server" Text='<%# Bind("ProjectPresent") %>'>
                </asp:TextBox><br />
                Total:
                <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>'>
                </asp:TextBox><br />
                Grade:
                <asp:TextBox ID="GradeTextBox" runat="server" Text='<%# Bind("Grade") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;&nbsp; <span style="font-size: 16pt">
                    <span style="text-decoration: underline">V-number</span>&nbsp; : &nbsp;&nbsp; </span>
                <asp:Label ID="IDLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="14pt"
                    Text='<%# Eval("ID") %>'></asp:Label><span style="font-size: 16pt"> &nbsp; &nbsp; 
                        <span style="text-decoration: underline">Name</span> : </span>
                <asp:Label ID="NameLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="14pt"
                    Text='<%# Bind("Name") %>'></asp:Label><span style="font-size: 16pt"> &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        &nbsp;&nbsp; <span style="text-decoration: underline">Email</span> : </span>
                <asp:Label ID="EmailLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="14pt"
                    Text='<%# Bind("Email") %>' Width="394px"></asp:Label><br />
                <br />
                <br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Midterm Exam 1 - max 25 : &nbsp;
                    &nbsp;</span><asp:Label ID="Midterm1Label" runat="server" Font-Bold="True" Font-Names="Arial"
                        Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Midterm1") %>'></asp:Label><br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Midterm Exam 2 - max 25 :
                    &nbsp;&nbsp; </span>
                <asp:Label ID="Midterm2Label" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Midterm2") %>'></asp:Label><br />
                <br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Homework 1 - max 11&nbsp; &nbsp;
                    &nbsp;&nbsp; : &nbsp; &nbsp; </span>
                <asp:Label ID="Homework1Label" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Homework1") %>'></asp:Label><br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Homework 2 - max 11 &nbsp; &nbsp;
                    &nbsp; : &nbsp; &nbsp; </span>
                <asp:Label ID="Homework2Label" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Homework2") %>'></asp:Label><br />
                <br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Project Progress - max 4 &nbsp;&nbsp;
                    : &nbsp;&nbsp; </span>
                <asp:Label ID="ProjectProgressLabel" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="14pt" ForeColor="Red" Text='<%# Bind("ProjectProgress") %>'></asp:Label><br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Project Present &nbsp; - max 24&nbsp;
                    : &nbsp; &nbsp;</span><asp:Label ID="ProjectPresentLabel" runat="server" Font-Bold="True"
                        Font-Names="Arial" Font-Size="14pt" ForeColor="Red" Text='<%# Bind("ProjectPresent") %>'></asp:Label><br />
                <br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bonus Points &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : </span>
                &nbsp;&nbsp;
                <asp:Label ID="BonusLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="14pt"
                    ForeColor="Red" Text='<%# Bind("Bonus") %>'></asp:Label><br />
                <br />
                <br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Total - max 100 &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; : &nbsp; &nbsp;</span><asp:Label ID="TotalLabel"
                        runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="14pt" ForeColor="Red"
                        Text='<%# Bind("Total") %>'></asp:Label><br />
                <span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Grade &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; : &nbsp; &nbsp;</span><asp:Label ID="GradeLabel" runat="server" Font-Bold="True"
                        Font-Names="Arial" Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Grade") %>'></asp:Label><br />
                <br />
                &nbsp; <span style="font-size: 16pt"><span><span style="text-decoration: underline">
                    Comments <br />
                </span></span><span style="font-size: 14pt"><span style="line-height: 115%; mso-ansi-language: EN-US;
                    mso-bidi-language: AR-SA; mso-fareast-font-family: Calibri; mso-bidi-font-family: 'Times New Roman';
                    mso-fareast-language: EN-US"><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:Label ID="CommentsLabel" runat="server" Font-Bold="True" Font-Names="Arial"
                        Font-Size="14pt" ForeColor="Red" Text='<%# Bind("Comments") %>' Width="464px" Height="60px"></asp:Label><br />
                </span></span>
                </span>
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
