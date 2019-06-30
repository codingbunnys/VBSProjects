' By 1O_O
' Give Credit
' Discord: 1O_O#3135
' YT: https://bit.ly/mineblox
' Minecraft: 1O_O(Main) | 0J3(Alt)
' Roblox: me_DS
x=msgbox("The Programmer of this program (1O_O#3135) reccomends the" + vbNewLine + "Brave browser." + vbNewLine + "Thanks for reading." + vbNewLine + "(About: https://brave.com/)" + vbNewLine + "Press OK to continue. This program will then prompt to install brave.",0+64+4096, "Browser reccomendation")
intAnswer = Msgbox("Do you wish to download and install brave browser automatically?" + vbNewLine + "(select no if it is alredy installed)" + vbNewLine + "(Will install from " + vbNewLine + "https://brave-browser-downloads.s3.brave.com/latest/BraveBrowserSetup.exe)", 4096+32+4, "Install Brave?")
If intAnswer = vbYes Then
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
	intAnswer = Msgbox("Confirm that you want to install brave" + vbNewLine + "(Brave is 100% safe. Installer located in C:\BraveSetup\BraveSetup.exe)" + vbNewLine + "If brave is installed, pressing yes might clear brave's data", 4096+32+4, "Confirmation")
	If intAnswer = vbYes Then
		CreateObject("WScript.Shell").Run "C:\BraveSetup\BraveSetup.exe"
	Else
		x=Msgbox("You can always resume installing brave." + vbNewLine + "(Just run BraveSetup.exe inside of the C:\BraveSetup\ directory)", 0+16+4096, "Cancelled Installing Brave")
	End If
Else
  	x=Msgbox("You can always resume Downloading & Installing brave without even deeding to visit their website." + vbNewLine + "(Just run this file again)", 0+16+4096, "Cancelled Downloading Brave")
End If
