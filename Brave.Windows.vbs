' By 1O_O
' Give Credit
' Discord: 1O_O#3135
' YT: https://bit.ly/mineblox
' Minecraft: 1O_O(Main) | 0J3(Alt)
' Roblox: me_DS
intAnswer = Msgbox("Do you wish to download the brave browser?" + vbNewLine + "(select no if it is alredy installed)" + vbNewLine + "(Will install from " + vbNewLine + "https://brave-browser-downloads.s3.brave.com/latest/BraveBrowserSetup.exe)", 4096+32+4, "Download Brave?")
If intAnswer = vbYes Then
	strFolder = "C:\BraveSetup"

	SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
	objFSO.DeleteFolder strFolder
	Dim oFSO
	Set oFSO = CreateObject("Scripting.FileSystemObject")

	' Create a new folder
	oFSO.CreateFolder "C:\BraveSetup\"
	dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
	dim bStrm: Set bStrm = createobject("Adodb.Stream")
	xHttp.Open "GET", "https://brave-browser-downloads.s3.brave.com/latest/BraveBrowserSetup.exe", False
	xHttp.Send
	with bStrm
		.type = 1
		.open
		.write xHttp.responseBody
		.savetofile "C:\BraveSetup\BraveSetup.exe", 2
	end with
	intAnswer = Msgbox("Confirm that you want to install brave" + vbNewLine + "(Brave is 100% safe. Installer located in C:\BraveSetup\BraveSetup.exe)" + vbNewLine + "If brave is installed, pressing yes might clear brave's data", 4096+32+4, "Install Brave")
	If intAnswer = vbYes Then
		CreateObject("WScript.Shell").Run "C:\BraveSetup\BraveSetup.exe"
	Else
		x=Msgbox("You can always resume installing brave." + vbNewLine + "(Just run BraveSetup.exe inside of the C:\BraveSetup\ directory)", 0+16+4096, "Cancelled Installing Brave")
	End If
Else
  	x=Msgbox("You can always resume Downloading & Installing brave without even needing to visit their website." + vbNewLine + "(Just run this file again)", 0+16+4096, "Cancelled Downloading Brave")
End If
