//This is what you write in exam. This file cannot be opened in Visual Basic.

Option Explicit

Dim x As Double
Dim res As Double
Dim sOperation As String

Private Sub cmd0_Click()
lblResult.Caption = lblResult.Caption & "0"
End Sub

Private Sub cmd1_Click()
lblResult.Caption = lblResult.Caption & "1"
End Sub
Private Sub cmd2_Click()
lblResult.Caption = lblResult.Caption & "2"
End Sub
Private Sub cmd3_Click()
lblResult.Caption = lblResult.Caption & "3"
End Sub
Private Sub cmd4_Click()
lblResult.Caption = lblResult.Caption & "4"
End Sub
Private Sub cmd5_Click()
lblResult.Caption = lblResult.Caption & "5"
End Sub
Private Sub cmd6_Click()
lblResult.Caption = lblResult.Caption & "6"
End Sub
Private Sub cmd7_Click()
lblResult.Caption = lblResult.Caption & "7"
End Sub
Private Sub cmd8_Click()
lblResult.Caption = lblResult.Caption & "8"
End Sub
Private Sub cmd9_Click()
lblResult.Caption = lblResult.Caption & "9"
End Sub

Private Sub cmdA_Click()
x = CDbl(lblResult.Caption)
sOperation = "+"
lblResult.Caption = ""
End Sub

Private Sub cmdC_Click()
lblResult.Caption = ""
End Sub

Private Sub cmdD_Click()
x = CDbl(lblResult.Caption)
lblResult.Caption = ""
sOperation = "/"
End Sub

Private Sub cmdDot_Click()
lblResult.Caption = lblResult.Caption & "."
End Sub

Private Sub cmdEq_Click()
Select Case sOperation
    Case "+"
    res = x + CDbl(lblResult.Caption)
    Case "-"
    res = x - CDbl(lblResult.Caption)
    Case "*"
    res = x * CDbl(lblResult.Caption)
    Case "/"
    res = x / CDbl(lblResult.Caption)
    Case "%"
    res = (x / CDbl(lblResult.Caption)) * 100
End Select
lblResult.Caption = res
End Sub
Private Sub cmdM_Click()
x = CDbl(lblResult.Caption)
sOperation = "*"
lblResult.Caption = ""
End Sub
Private Sub cmdPe_Click()
x = CDbl(lblResult.Caption)
sOperation = "%"
lblResult.Caption = ""
End Sub
Private Sub cmdPie_Click()
lblResult.Caption = lblResult.Caption & "3.14"
End Sub
Private Sub cmdS_Click()
x = CDbl(lblResult.Caption)
sOperation = "-"
lblResult.Caption = ""
End Sub

Private Sub cmdX_Click()
If Len(lblResult.Caption) > 0 Then
    lblResult.Caption = Left(lblResult.Caption, Len(lblResult.Caption) - 1)
End If
End Sub
