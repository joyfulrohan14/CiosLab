
Partial Class Prof
    Inherits System.Web.UI.Page
    Protected Sub CheckAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckAll.Click
        TextBox1.Text = ""
        TextBox1.Visible = False
        TextBox2.Visible = False
        Label1.Visible = False
        'Enumerate each GridViewRow
        For Each gvr As GridViewRow In GridView1.Rows
            'Programmatically access the CheckBox from the TemplateField
            Dim cb As CheckBox = CType(gvr.FindControl("RowLevelCheckBox"), CheckBox)
            'Check it!
            cb.Checked = True
        Next
    End Sub
    Protected Sub UncheckAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles UncheckAll.Click
        'Enumerate each GridViewRow
        TextBox1.Text = ""
        TextBox1.Visible = False
        TextBox2.Visible = False
        Label1.Visible = False
        For Each gvr As GridViewRow In GridView1.Rows
            'Programmatically access the CheckBox from the TemplateField
            Dim cb As CheckBox = CType(gvr.FindControl("RowLevelCheckBox"), CheckBox)

            'Uncheck it!
            cb.Checked = False
        Next
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox1.Text = ""
        TextBox1.Visible = True
        TextBox2.Visible = True
        Label1.Visible = True
        Dim rs As Integer
        rs = 0
        For Each gvr As GridViewRow In GridView1.Rows
            'Programmatically access the CheckBox from the TemplateField
            Dim cb As CheckBox = CType(gvr.FindControl("RowLevelCheckBox"), CheckBox)
            If cb.Checked = True Then
                Dim s As String = gvr.Cells(12).Text
                s = Replace(s, "&nbsp;", "")
                TextBox1.Text = TextBox1.Text & Trim(s) & ","
                rs = rs + 1
            End If
            If Left(TextBox1.Text, 1) = "," Then
                TextBox1.Text = Mid(TextBox1.Text, 2)
            End If
            TextBox1.Text = Replace(TextBox1.Text, ",,", ",")
        Next
        Label1.Text = "Select " & rs & " persons in list"
        TextBox1.Focus()
    End Sub

    Protected Sub txtAcc_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtAcc.TextChanged
        If txtAcc.Text = "abc12" Then
            'GridView1.Visible = True
            CheckAll.Visible = True
            UncheckAll.Visible = True
            Button1.Visible = True
            txtAcc.Visible = False
            Label1.Visible = False
            Bonus.Visible = True
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Visible = False
        TextBox1.Attributes.Add("onfocus", "SetSelected();")
    End Sub
End Class
