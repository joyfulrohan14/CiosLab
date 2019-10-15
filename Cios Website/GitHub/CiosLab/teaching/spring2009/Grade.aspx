<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="cs_dmb_teaching_spring2009_Grade" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 800px; position: static; height: 104px">
        <tr>
            <td style="width: 204px; height: 28px;">
                Enter Your VCU ID number:</td>
            <td style="width: 667px; height: 28px;" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static">V</asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 106px;" colspan="3" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="AccessDataSource1"
                    ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" Style="position: static"
                    Width="792px">
                    <FooterStyle BackColor="Tan" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                        <asp:BoundField DataField="Project Progress(4)" HeaderText="Project Progress(4)"
                            SortExpression="Project Progress(4)" />
                        <asp:BoundField DataField="HW1(11)" HeaderText="HW1(11)" SortExpression="HW1(11)" />
                        <asp:BoundField DataField="Exam1(25)" HeaderText="Exam1(25)" SortExpression="Exam1(25)" />
                        <asp:BoundField DataField="HW2(11)" HeaderText="HW2(11)" SortExpression="HW2(11)" />
                        <asp:BoundField DataField="Project Final(24)" HeaderText="Project Final(24)" SortExpression="Project Final(24)" />
                        <asp:BoundField DataField="Exam2(25)" HeaderText="Exam2(25)" SortExpression="Exam2(25)" />
                    </Columns>
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="height: 51px">
                <asp:FormView ID="FormView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
                    BorderWidth="1px" CellPadding="2" DataSourceID="AccessDataSource2" ForeColor="Black"
                    Height="24px" Style="position: static" Width="792px">
                    <FooterStyle BackColor="Tan" />
                    <EditItemTemplate>
                        Comment_on_HW1:
                        <asp:TextBox ID="Comment_on_HW1TextBox" runat="server" Text='<%# Bind("Comment_on_HW1") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="업데이트">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="취소">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Comment_on_HW1:
                        <asp:TextBox ID="Comment_on_HW1TextBox" runat="server" Text='<%# Bind("Comment_on_HW1") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="삽입">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="취소">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <a style =" font-weight:bold"> Comment_on_HW1:</a> <br />
                        <asp:Label ID="Comment_on_HW1Label" runat="server" Text='<%# Bind("Comment_on_HW1") %>'>
                        </asp:Label><br />
                    </ItemTemplate>
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                </asp:FormView>
            </td>
        </tr>
    </table>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" SelectCommand="SELECT [ID], [SName], [Project Progress(4)], [HW1(11)], [Exam1(25)], [HW2(11)], [Project Final(24)], [Exam2(25)]  FROM [Grades] WHERE ([ID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="&quot;&quot;" Name="ID"
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        SelectCommand="SELECT [Comment on HW1] AS Comment_on_HW1 FROM [Grades] WHERE ([ID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="&quot;&quot;" Name="ID"
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

