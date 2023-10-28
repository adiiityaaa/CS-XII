VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000000&
   Caption         =   "Calculator"
   ClientHeight    =   6015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   3960
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   6015
   ScaleWidth      =   3960
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdD 
      Caption         =   "/"
      Height          =   615
      Left            =   2880
      TabIndex        =   19
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmdM 
      Caption         =   "*"
      Height          =   615
      Left            =   2880
      TabIndex        =   18
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmdS 
      Caption         =   "-"
      Height          =   615
      Left            =   2880
      TabIndex        =   17
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton cmdA 
      Caption         =   "+"
      Height          =   615
      Left            =   2880
      TabIndex        =   16
      Top             =   4200
      Width           =   615
   End
   Begin VB.CommandButton cmdEq 
      Caption         =   "="
      Height          =   615
      Left            =   2880
      TabIndex        =   15
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "1"
      Height          =   615
      Left            =   360
      TabIndex        =   14
      Top             =   4200
      Width           =   615
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "2"
      Height          =   615
      Left            =   1200
      TabIndex        =   13
      Top             =   4200
      Width           =   615
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "3"
      Height          =   615
      Left            =   2040
      TabIndex        =   12
      Top             =   4200
      Width           =   615
   End
   Begin VB.CommandButton cmd5 
      Caption         =   "5"
      Height          =   615
      Left            =   1200
      TabIndex        =   11
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton cmd6 
      Caption         =   "6"
      Height          =   615
      Left            =   2040
      TabIndex        =   10
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton cmdPe 
      Caption         =   "%"
      Height          =   615
      Left            =   2040
      TabIndex        =   9
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmd7 
      Caption         =   "7"
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmd8 
      Caption         =   "8"
      Height          =   615
      Left            =   1200
      TabIndex        =   7
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmd9 
      Caption         =   "9"
      Height          =   615
      Left            =   2040
      TabIndex        =   6
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmd4 
      Caption         =   "4"
      Height          =   615
      Left            =   360
      TabIndex        =   5
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton cmdDot 
      Caption         =   "."
      Height          =   615
      Left            =   2040
      TabIndex        =   4
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdC 
      BackColor       =   &H80000000&
      Caption         =   "C"
      Height          =   615
      Left            =   360
      TabIndex        =   3
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmdX 
      Caption         =   "X"
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmd0 
      Caption         =   "0"
      Height          =   615
      Left            =   1200
      TabIndex        =   1
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdPie 
      Caption         =   "Pie"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   5040
      Width           =   615
   End
   Begin VB.Label lblResult 
      BorderStyle     =   1  'Fixed Single
      Height          =   855
      Left            =   360
      TabIndex        =   20
      Top             =   600
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
