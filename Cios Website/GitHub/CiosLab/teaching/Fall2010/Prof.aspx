<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Prof.aspx.vb" Inherits="Prof" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Professor's Management Page - Fall 2010</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <p class="MsoNormal" style="text-align: center; mso-pagination: none">
            <span style="font-weight: bold; font-size: 20pt; color: #ff6600; font-family: Arial;
                mso-default-font-family: Arial; mso-ascii-font-family: Arial; mso-latin-font-family: Arial;
                mso-greek-font-family: Arial; mso-cyrillic-font-family: Arial; mso-armenian-font-family: Arial;
                mso-hebrew-font-family: Arial; mso-arabic-font-family: Arial; mso-currency-font-family: Arial;
                mso-latinext-font-family: Arial; language: EN; mso-ansi-language: EN; mso-bidi-language: AR-SA">
                CMSC 635: KNOWLEDGE DISCOVERY &amp; DATA MINING<?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                    prefix="o" ?><?xml namespace="" prefix="O" ?><o:p></o:p></span></p>
        <p class="MsoNormal" style="text-align: center; mso-pagination: none">
            <span style="font-weight: bold; font-size: 18pt; font-family: Arial; mso-default-font-family: Arial;
                mso-ascii-font-family: Arial; mso-latin-font-family: Arial; mso-greek-font-family: Arial;
                mso-cyrillic-font-family: Arial; mso-armenian-font-family: Arial; mso-hebrew-font-family: Arial;
                mso-arabic-font-family: Arial; mso-currency-font-family: Arial; mso-latinext-font-family: Arial;
                language: EN; mso-ansi-language: EN; mso-bidi-language: AR-SA">Fall 2010</span></p>
        <p style="text-align: center">
            <strong><span style="font-family: Arial">Please input your account and press ENTER key</span></strong><br />
        <asp:TextBox ID="txtAcc" runat="server"></asp:TextBox><br />
        
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="Fall2010.mdb"
            SelectCommand="SELECT * FROM [Fall2010] WHERE (txtAcc = 'abc12') order by dummy">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtAcc" Name="ID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        </p>
        <p style="text-align: center">
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="Fall2010.mdb"
                SelectCommand="SELECT COUNT(ID)-2 AS Expr1 FROM Fall2010 rs"></asp:AccessDataSource>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource2" Width="402px">
                <EditItemTemplate>
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>'>
                    </asp:TextBox><br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="Update">
                    </asp:LinkButton>
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="Cancel">
                    </asp:LinkButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>'>
                    </asp:TextBox><br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="Insert">
                    </asp:LinkButton>
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="Cancel">
                    </asp:LinkButton>
                </InsertItemTemplate>
                <ItemTemplate>
                    <strong><span style="text-decoration: underline">Total : </span></strong>
                    <asp:Label ID="rs" runat="server" Font-Bold="True" Font-Underline="True" Text='<%# Bind("Expr1") %>'></asp:Label><strong><span
                        style="text-decoration: underline">&nbsp; students in class</span></strong><br />
                </ItemTemplate>
            </asp:FormView>
            &nbsp;</p>
        <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" Width="1125px">
            <Columns>
                <asp:TemplateField HeaderText="Select"><ItemTemplate>
                                        <asp:CheckBox runat="server" ID="RowLevelCheckBox" />
                                   </ItemTemplate>
                    <ItemStyle Width="20px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Left" Width="150px" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ID" HeaderText="V-number" ReadOnly="True" Visible="False" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Offline" HeaderText="Off-campus" ReadOnly="True" Visible="False" >
                    <ItemStyle Width="30px" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="ProjectProgress" HeaderText="Project Progress (max=4)"
                    ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Homework1" HeaderText="HW1(max=11)">
                    <ItemStyle Width="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MidTerm1" HeaderText="Exam 1(max=25)" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Homework2" HeaderText="HW2(max=11)">
                    <ItemStyle Width="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Midterm2" HeaderText="Exam2(max=25)">
                    <ItemStyle Width="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ProjectPresent" HeaderText="Final Report(max=24)">
                    <ItemStyle Width="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Bonus" HeaderText="Bonus">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                </asp:BoundField>
                <asp:BoundField DataField="Total" HeaderText="Total" >
                    <ItemStyle Font-Bold="True" ForeColor="Red" Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Left" Width="50px" Wrap="False" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        </p>
        <p>
            <asp:TextBox ID="Bonus" runat="server" Height="154px" ReadOnly="True" TextMode="MultiLine"
                Visible="False" Width="831px">Notes about bonus points
Robert Strack (4points) = 2 pts for Errata + 2 pts for implemeting threshold in Clip4 (HW2)
Beata Strack   (3points) = 2 pts for Errata + 1 pts for implemeting threshold in Clip4 (HW2)
Raied Salman   (2 points) = 1 pts for Errata + 1 pts for implemeting threshold in Clip4 (HW2)
Gregory Smith   (2 points) = 1 pts for Errata + 1 pts for implemeting threshold in Clip4 (HW2)
Xuguang Qi   (1 points) = 1 pts for Errata  
Sharad Shandilya  (1 points) = 1 pts for Errata 
Mahsa Zahery  (1 points) = 1 pts for Errata 
Erik Test   (0.5 points) = 0.5 pts for Errata 
</asp:TextBox>&nbsp;</p>
        <p>
   <asp:Button ID="CheckAll" runat="server" Text="Check All" Visible="False" />
   &nbsp;
   <asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" Visible="False" />
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Click to get list of email addresses" Visible="False" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Width="648px"></asp:Label>&nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="194px" TextMode="MultiLine" Visible="False"
                Width="651px"></asp:TextBox>&nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="12pt" Height="49px"
                ReadOnly="True" TextMode="MultiLine" Visible="False" Width="649px">Select text in above textbox, using Edit/Copy ( or press Ctr-C) then return webmail, paste in To item</asp:TextBox>&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>


<script>
function SetSelected()
{
document.Form1.TextBox.select();
}

</script>