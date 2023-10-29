VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3795
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9300
   LinkTopic       =   "Form1"
   ScaleHeight     =   3795
   ScaleWidth      =   9300
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton rem2 
      Caption         =   "Remove"
      Height          =   495
      Left            =   6120
      TabIndex        =   6
      Top             =   2640
      Width           =   1575
   End
   Begin VB.CommandButton rem1 
      Caption         =   "Remove"
      Height          =   495
      Left            =   1200
      TabIndex        =   5
      Top             =   2640
      Width           =   1455
   End
   Begin VB.ListBox list2 
      Height          =   1230
      Left            =   5520
      TabIndex        =   4
      Top             =   1080
      Width           =   2775
   End
   Begin VB.CommandButton add 
      Caption         =   "Add"
      Height          =   495
      Left            =   3720
      TabIndex        =   3
      Top             =   1320
      Width           =   1335
   End
   Begin VB.ListBox list1 
      Height          =   1230
      Left            =   600
      TabIndex        =   0
      Top             =   1080
      Width           =   2655
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Peripherals:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5520
      TabIndex        =   2
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Computer Parts:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   480
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
