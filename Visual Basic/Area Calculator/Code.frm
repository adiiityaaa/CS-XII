Option Explicit
Dim x As Double
Private Sub calc_Click()
If selector.Text = "Rectangle" Then
        If Len(length.Text) = 0 Then
            result.Caption = "No Input"
        ElseIf Len(breadth.Text) = 0 Then
            result.Caption = "No Input"
        Else
            x = Int(length.Text) * Int(breadth.Text)
            result.Caption = x
        End If
End If
If selector.Text = "Circle" Then
        If Len(radius.Text) = 0 Then
            result.Caption = "No Input"
        Else
            x = Int(radius.Text) * Int(radius.Text) * 3.14
            result.Caption = x
        End If
End If
End Sub

Private Sub selector_DropDown()
selector.Clear
length.Text = ""
breadth.Text = ""
radius.Text = ""
selector.AddItem "Circle"
selector.AddItem "Rectangle"
End Sub
