VERSION 5.00
Begin VB.Form MainFrm 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "øŒÃ√÷˙ ÷"
   ClientHeight    =   8595
   ClientLeft      =   165
   ClientTop       =   510
   ClientWidth     =   4980
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   4980
   StartUpPosition =   1  'À˘”–’ﬂ÷––ƒ
   Begin VB.Timer Tmr1 
      Enabled         =   0   'False
      Interval        =   99
      Left            =   4560
      Top             =   480
   End
   Begin VB.Frame Frm 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      Caption         =   "Frm"
      ForeColor       =   &H80000008&
      Height          =   1815
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.TextBox Txt_Arg 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "ÀŒÃÂ"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   960
         MaxLength       =   4
         TabIndex        =   2
         TabStop         =   0   'False
         Text            =   "45"
         Top             =   0
         Width           =   1095
      End
      Begin VB.CheckBox Chk 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "ø…÷ÿ"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   2160
         TabIndex        =   4
         Top             =   0
         Width           =   975
      End
      Begin VB.Label Lbl_Out 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   48
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   975
         Index           =   0
         Left            =   0
         TabIndex        =   1
         Top             =   600
         Width           =   4215
      End
      Begin VB.Label Cmd 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "≥È∫≈"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   495
         Index           =   0
         Left            =   3240
         TabIndex        =   8
         Top             =   0
         Width           =   735
      End
      Begin VB.Label Lbl_Tip 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "»À ˝:"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   0
         Left            =   0
         TabIndex        =   3
         Top             =   0
         Width           =   975
      End
   End
   Begin VB.Frame Frm 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      Caption         =   "Frm"
      ForeColor       =   &H80000008&
      Height          =   4215
      Index           =   2
      Left            =   240
      TabIndex        =   10
      Top             =   4200
      Width           =   4575
      Begin VB.Frame Frm_Gde 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         Caption         =   "Gde"
         ForeColor       =   &H80000008&
         Height          =   615
         Index           =   0
         Left            =   1200
         TabIndex        =   21
         Top             =   1320
         Width           =   3255
         Begin VB.TextBox Txt_Gde0 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Index           =   2
            Left            =   2160
            MaxLength       =   4
            TabIndex        =   24
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.TextBox Txt_Gde0 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Index           =   1
            Left            =   1200
            MaxLength       =   4
            TabIndex        =   23
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.TextBox Txt_Gde0 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Index           =   0
            Left            =   240
            MaxLength       =   4
            TabIndex        =   22
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde0 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   "√Î"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   2
            Left            =   2640
            TabIndex        =   27
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde0 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   "∑÷"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   1
            Left            =   1680
            TabIndex        =   26
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde0 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   " ±"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   0
            Left            =   720
            TabIndex        =   25
            Top             =   120
            Width           =   495
         End
      End
      Begin VB.OptionButton Opt 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   " ±≥§"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   0
         Left            =   480
         TabIndex        =   12
         Top             =   1680
         Value           =   -1  'True
         Width           =   735
      End
      Begin VB.Frame Frm_Gde 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         Caption         =   "Gde"
         Enabled         =   0   'False
         ForeColor       =   &H80000008&
         Height          =   735
         Index           =   1
         Left            =   1200
         TabIndex        =   14
         Top             =   2160
         Width           =   3255
         Begin VB.TextBox Txt_Gde1 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Index           =   0
            Left            =   240
            MaxLength       =   4
            TabIndex        =   20
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.TextBox Txt_Gde1 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Index           =   1
            Left            =   1200
            MaxLength       =   4
            TabIndex        =   18
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.TextBox Txt_Gde1 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Index           =   2
            Left            =   2160
            MaxLength       =   4
            TabIndex        =   16
            TabStop         =   0   'False
            Text            =   "0"
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde1 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   " ±"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   0
            Left            =   720
            TabIndex        =   19
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde1 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   "∑÷"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   1
            Left            =   1680
            TabIndex        =   17
            Top             =   120
            Width           =   495
         End
         Begin VB.Label Lbl_Gde1 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            BorderStyle     =   1  'Fixed Single
            Caption         =   "√Î"
            BeginProperty Font 
               Name            =   "Œ¢»Ì—≈∫⁄"
               Size            =   15
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   375
            Index           =   2
            Left            =   2640
            TabIndex        =   15
            Top             =   120
            Width           =   495
         End
      End
      Begin VB.OptionButton Opt 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "÷¡£∫"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   1
         Left            =   480
         TabIndex        =   13
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Cmd 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "ø™ º"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   2
         Left            =   3720
         TabIndex        =   11
         Top             =   0
         Width           =   735
      End
   End
   Begin VB.Timer Tmr 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   4560
      Top             =   0
   End
   Begin VB.Frame Frm 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      Caption         =   "Frm"
      ForeColor       =   &H80000008&
      Height          =   1815
      Index           =   1
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   4575
      Begin VB.Label Lbl_Prg 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Index           =   1
         Left            =   1800
         TabIndex        =   29
         Top             =   0
         Width           =   1335
      End
      Begin VB.Label Lbl_Prg 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Index           =   0
         Left            =   1080
         TabIndex        =   28
         Top             =   0
         Width           =   1335
      End
      Begin VB.Label Lbl_Out 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   48
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   1095
         Index           =   1
         Left            =   0
         TabIndex        =   7
         Top             =   480
         Width           =   3855
      End
      Begin VB.Label Cmd 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Õ£÷π"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   1
         Left            =   3120
         TabIndex        =   9
         Top             =   0
         Width           =   735
      End
      Begin VB.Label Lbl_Tip 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   " £”‡:"
         BeginProperty Font 
            Name            =   "Œ¢»Ì—≈∫⁄"
            Size            =   15
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   375
         Index           =   1
         Left            =   0
         TabIndex        =   6
         Top             =   0
         Width           =   1095
      End
   End
   Begin VB.Menu Menu 
      Caption         =   "≥È∫≈"
      Index           =   0
      NegotiatePosition=   2  'Middle
   End
   Begin VB.Menu Menu 
      Caption         =   "∂® ±"
      Index           =   1
      NegotiatePosition=   2  'Middle
   End
End
Attribute VB_Name = "MainFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim LastText(2, 2) As String
Dim TimeSta As Long, timeLng As Long
Dim NumList() As Integer, TimeList(1 To 3) As Integer
Private Declare Function GetTickCount Lib "kernel32" () As Long
Private Declare Function Beep Lib "kernel32" (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Private Sub Form_Load()
    Dim i, j As Byte
    ReDim NumList(0)
    TimeList(1) = 180
    TimeList(2) = 300
    TimeList(3) = 600
    For i = 0 To 2
        For j = 0 To 2
            LastText(i, j) = 0
        Next
    Next
    LastText(0, 0) = 45
    Me.Height = 3600
    Me.Width = 4800
    GetList
End Sub
Private Sub Form_Resize()
    If Me.WindowState = 1 Then Exit Sub
    If Me.Height < 3600 Then Me.Height = 3600
    If Me.Width < 4800 Then Me.Width = 4800
    BoardSet Me.Width, Me.Height
End Sub
Function BoardSet(Width As Long, Height As Long)
    Dim i As Byte
    Dim WID, HEI, Fontsize, NumNow As Integer
    NumNow = Val(Lbl_Out(0).Caption)
    WID = Width / 4
    HEI = Height / 7
    With Lbl_Out(0)
        .Visible = False
        .AutoSize = True
        .Caption = "0000"
        .Fontsize = 1
        Do While .Height < HEI * 6 And .Width < WID * 4
            .Fontsize = .Fontsize + 20
        Loop
        Fontsize = (.Fontsize - 35) / 6
        .Caption = NumNow
        .AutoSize = False
        .Visible = True
    End With
    With Txt_Arg
        .Fontsize = Fontsize * 0.9
        .Top = 0
        .Left = WID
        .Height = HEI
        .Width = WID
    End With
    With Chk
        .Fontsize = Fontsize
        .Top = 0
        .Left = WID * 2
        .Height = HEI
        .Width = WID
    End With
    For i = 0 To 1
        With Lbl_Tip(i)
            .Fontsize = Fontsize
            .Top = 0
            .Left = 0
            .Height = HEI
            .Width = WID
        End With
        With Lbl_Prg(i)
            .Fontsize = Fontsize
            .Top = 0
            .Left = WID
            .Height = HEI
            .Width = WID * 2
        End With
        With Lbl_Out(i)
            .Fontsize = Fontsize * 6
            .Top = HEI
            .Left = 0
            .Height = HEI * 6
            .Width = WID * 4
        End With
        With Opt(i)
            .Fontsize = Fontsize
            .Top = HEI + HEI * 2 * i
            .Left = 0
            .Height = HEI
            .Width = WID
        End With
        With Frm_Gde(i)
            .Top = Opt(i).Top + HEI
            .Left = WID
            .Height = HEI
            .Width = WID * 3
        End With
    Next
    For i = 0 To 2
        With Frm(i)
            .Height = Height
            .Width = Width
            .Top = 0
            .Left = 0
        End With
        With Cmd(i)
            .Fontsize = Fontsize
            .Top = 0
            .Left = WID * 3
            .Height = HEI
            .Width = WID
        End With
        With Txt_Gde0(i)
            .Fontsize = Fontsize * 0.9
            .Top = 0
            .Left = WID * i
            .Height = HEI
            .Width = WID * 0.5
        End With
        With Txt_Gde1(i)
            .Fontsize = Fontsize * 0.9
            .Top = 0
            .Left = WID * i
            .Height = HEI
            .Width = WID * 0.5
        End With
        With Lbl_Gde0(i)
            .Fontsize = Fontsize
            .Top = 0
            .Left = WID * 0.5 + WID * i
            .Height = HEI
            .Width = WID * 0.5
        End With
        With Lbl_Gde1(i)
            .Fontsize = Fontsize
            .Top = 0
            .Left = Lbl_Gde0(i).Left
            .Height = HEI
            .Width = WID * 0.5
        End With
    Next
End Function
Private Sub Menu_Click(Index As Integer)
    Dim i As Byte
    Frm(Index).ZOrder 0
    If Index = 1 And Not Tmr.Enabled Then
        Frm(2).ZOrder 0
        For i = 0 To 2
            Txt_Gde0(i).Text = "0"
        Next
        Tmr1.Enabled = True
    End If
End Sub
Private Sub Txt_Arg_Change()
    Txt_Arg.Text = InputChk(Txt_Arg.Text, LastText(0, 0), 1, 9999)
    LastText(0, 0) = Txt_Arg.Text
    GetList
End Sub
Private Sub Txt_Gde0_Change(Index As Integer)
    Txt_Gde0(Index).Text = InputChk(Txt_Gde0(Index).Text, LastText(1, Index), 0, 60)
    LastText(1, Index) = Txt_Gde0(Index).Text
    If Val(Txt_Gde0(0).Text) > 24 Then Txt_Gde0(0).Text = "24"
End Sub
Private Sub Txt_Gde1_Change(Index As Integer)
    Dim last As String
    Txt_Gde1(Index).Text = InputChk(Txt_Gde1(Index).Text, LastText(2, Index), 0, 60)
    LastText(2, Index) = Txt_Gde1(Index).Text
    If Val(Txt_Gde1(0).Text) > 24 Then Txt_Gde1(0).Text = "24"
End Sub
Private Sub Opt_Click(Index As Integer)
    If Index = 0 Then
        Frm_Gde(0).Enabled = True
        Frm_Gde(1).Enabled = False
    Else
        Frm_Gde(0).Enabled = False
        Frm_Gde(1).Enabled = True
    End If
End Sub
Private Sub Cmd_Click(Index As Integer)
    Dim NumberIndex As Integer
    If Index = 0 Then
        NumberRoll
        NumberIndex = Rand(UBound(NumList))
        Lbl_Out(0).Caption = NumList(NumberIndex)
        If Chk.Value = 0 Then
            ListDel NumberIndex
            If UBound(NumList) = 0 Then
                MsgBox "À˘”–—ß∫≈“—≥Èπ˝°£"
                GetList
            End If
        End If
    Else
        Time Not Tmr.Enabled
        Menu_Click 1
    End If
End Sub
Private Sub Tmr_Timer()
    Dim timeLft As Long
    Dim hours As Long, minutes As Integer, seconds As Integer
    timeLft = timeLng - (GetTickCount() - TimeSta) \ 1000
    hours = timeLft \ 3600
    minutes = (timeLft - hours * 3600) \ 60
    seconds = timeLft - hours * 3600 - minutes * 60
    Lbl_Out(1).Caption = timeLft
    If timeLft = "30" Then
        Beep 600, 250
    ElseIf timeLft = "0" Then
        Beep 600, 500
        Time False
    End If
    Lbl_Prg(0).Width = timeLft / timeLng * Me.Width / 2
    Lbl_Prg(1).Caption = timeLft * 100 \ timeLng & "%," & hours & ":" & minutes & ":" & seconds
End Sub
Private Sub Tmr1_Timer()
    Dim t, hours, minutes, seconds As Integer
    If Opt(0).Value Then
        t = Hour(Now) * 3600 + Minute(Now) * 60 + Second(Now)
        t = t + Txt_Gde0(0).Text * 3600 + Txt_Gde0(1).Text * 60 + Txt_Gde0(2).Text
        If t > 86399 Then t = t - 86400
        hours = t \ 3600
        minutes = (t - hours * 3600) \ 60
        seconds = t - hours * 3600 - minutes * 60
        Txt_Gde1(0).Text = hours
        Txt_Gde1(1).Text = minutes
        Txt_Gde1(2).Text = seconds
    Else
        t = Hour(Now) * 3600 + Minute(Now) * 60 + Second(Now)
        t = Txt_Gde1(0).Text * 3600 + Txt_Gde1(1).Text * 60 + Txt_Gde1(2).Text - t
        If t < 0 Then t = 86400 + t
        hours = t \ 3600
        minutes = (t - hours * 3600) \ 60
        seconds = t - hours * 3600 - minutes * 60
        Txt_Gde0(0).Text = hours
        Txt_Gde0(1).Text = minutes
        Txt_Gde0(2).Text = seconds
    End If
End Sub
Function GetList()
    Dim i As Integer
    ReDim NumList(Val(Txt_Arg.Text))
    For i = 0 To UBound(NumList)
        NumList(i) = i
    Next
    Lbl_Out(0).Caption = "0"
End Function
Function ListDel(Index As Integer)
    Dim i As Integer
    For i = Index To UBound(NumList) - 1
        NumList(i) = NumList(i + 1)
    Next
    ReDim Preserve NumList(UBound(NumList) - 1)
End Function
Function Time(GonnaStart As Boolean)
    TimeSta = GetTickCount()
    timeLng = Val(Txt_Gde0(0).Text * 3600 + Txt_Gde0(1).Text * 60 + Txt_Gde0(2).Text)
    If timeLng = 0 Then Exit Function
    Tmr.Enabled = GonnaStart
    Lbl_Out(1).Caption = "0"
    If GonnaStart Then Lbl_Out(1).Caption = timeLng
End Function
Function Rand(MaxNum As Integer)
    Randomize
    Rand = Int(Rnd * MaxNum) + 1
End Function
Private Sub Chk_Click()
    GetList
End Sub
Function InputChk(Txt As String, lastTxt As String, minTxt As Integer, maxTxt As Integer)
    Txt = Replace(Txt, " ", "")
    Txt = Replace(Txt, ",", "")
    Txt = Replace(Txt, ".", "")
    Txt = Replace(Txt, "-", "")
    Txt = Replace(Txt, "+", "")
    If Txt = "" Then Txt = "1"
    If Left(Txt, 1) = "0" And Len(Txt) > 1 Then Txt = Right(Txt, Len(Txt) - 1)
    If IsNumeric(Txt) Then
        If Val(Txt) < minTxt Then Txt = Val(minTxt)
        If Val(Txt) > maxTxt Then Txt = Val(maxTxt)
    Else
        Txt = lastTxt
    End If
    InputChk = Txt
End Function
Function NumberRoll()
    Dim i As Integer
    For i = 0 To 10
        Lbl_Out(0).Caption = Int(Rnd * UBound(NumList))
        Lbl_Out(0).Refresh
        Sleep 20
    Next
End Function
