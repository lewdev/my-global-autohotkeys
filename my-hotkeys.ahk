/*
My application global keyshortcuts

^ = ctrl
! = alt
+ = shift
*/

^+!C:: ;Chrome
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe about:blank
Return

^+!G:: ;Gmail
SetTitleMatchMode RegEx
id := WinExist("- Gmail$")
if id {
  WinActivate, Gmail$
}
else {
  Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj
}
Return

^+!F:: ;Facebook
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://www.facebook.com/groups/237524160104801/
Return

^+!P:: ;Google Photos
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://photos.google.com
Return

^+!N:: ;Notepad++
Run C:\Program Files\Notepad++\notepad++.exe
Return

^+!Q:: ;Squirrel SQL
SetTitleMatchMode RegEx
id := WinExist("^SQuirreL SQL Client")
if id {
  WinActivate, ^SQuirreL SQL Client
}
else {
  Run C:\Users\LewisNakao\apps\squirrel-sql-snapshot-20180729_2224\squirrel-sql.bat
}
Return

/*
  ^+!3:: ;Firefox
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  Return
  ^+!5:: ;Skype
  Run C:\Program Files (x86)\Skype\Phone\Skype.exe
  Return
  ^+!Q:: ;Winamp
  Run C:\Program Files (x86)\Winamp\winamp.exe
  Return
  ^+!W:: ;Word
  Run C:\Program Files\Microsoft Office\Office16\WINWORD.EXE
  Return
*/
