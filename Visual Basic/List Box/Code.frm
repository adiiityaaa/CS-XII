Private Sub Form_Load()
list1.AddItem ("CPU")
list1.AddItem ("RAM")
list1.AddItem ("Hard Disk")
list1.AddItem ("Keyboard")
list1.AddItem ("Mouse")
list1.AddItem ("Monitor")
End Sub
Private Sub add_Click()
    If list1.ListIndex >= 0 Then
        list2.AddItem list1.List(list1.ListIndex)
        list1.RemoveItem list1.ListIndex
    ElseIf list2.ListIndex >= 0 Then
        list1.AddItem list2.List(list2.ListIndex)
        list2.RemoveItem list2.ListIndex
    Else
        MsgBox "Please select an Object!"
    End If
End Sub
Private Sub rem1_Click()
    If list1.ListIndex >= 0 Then
        list1.RemoveItem list1.ListIndex
    Else
        MsgBox "Please select an Object!"
    End If
End Sub
Private Sub rem2_Click()
    If list2.ListIndex >= 0 Then
        list2.RemoveItem list2.ListIndex
    Else
        MsgBox "Please select an Object!"
    End If
End Sub
