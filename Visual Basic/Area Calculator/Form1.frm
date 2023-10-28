VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5160
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5160
   ScaleWidth      =   8880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox radius 
      Height          =   375
      Left            =   3120
      TabIndex        =   8
      Top             =   2280
      Width           =   1695
   End
   Begin VB.TextBox breadth 
      Height          =   375
      Left            =   3120
      TabIndex        =   7
      Top             =   1680
      Width           =   1695
   End
   Begin VB.TextBox length 
      Height          =   375
      Left            =   3120
      TabIndex        =   6
      Top             =   1080
      Width           =   1695
   End
   Begin VB.CommandButton calc 
      Caption         =   "Calculate Area:"
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   2880
      Width           =   2175
   End
   Begin VB.ComboBox selector 
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   720
      TabIndex        =   0
      Text            =   "Select the Shape: "
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label7 
      Caption         =   "Enter Radius:"
      BeginProperty Font 
         Name            =   "Microsoft YaHei"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   2280
      Width           =   2175
   End
   Begin VB.Label result 
      BorderStyle     =   1  'Fixed Single
      Enabled         =   0   'False
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      Top             =   2880
      Width           =   1695
   End
   Begin VB.Label Label5 
      Caption         =   "Enter Breadth:"
      BeginProperty Font 
         Name            =   "Microsoft YaHei"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "Enter Length"
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   1
      Top             =   1200
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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

