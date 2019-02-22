/*
My application global keyshortcuts
^ = ctrl
! = alt
+ = shift
*/

chromeExe = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

^+!I:: ;Chrome (I for Internet)
  SetTitleMatchMode RegEx
  id := WinExist("- Google Chrome$")
  if id {
    WinActivate, - Google Chrome$
  }
  else {
    Run %chromeExe% chrome://newtab
  }
Return


^+!F:: ;Facebook bookmarks folder
  SetTitleMatchMode RegEx
  id := WinExist("- Google Chrome$")
  if id {
    WinActivate, - Google Chrome$
  }
  else {
    Run %chromeExe% chrome://newtab
  }
  Send ^l
  Send {Blind}{Text}chrome://bookmarks/?id=760
  Send {ENTER}
  ;Run %chromeExe% chrome://bookmarks/?id=760
Return

^+!T:: ;Chrome New Tab (T for Tab)
  SetTitleMatchMode RegEx
  id := WinExist("- Google Chrome$")
  if id {
    WinActivate, - Google Chrome$
    Send ^t
  }
  else {
    Run %chromeExe% chrome://newtab
  }
Return

^+!C:: ;Google Calendar
  SetTitleMatchMode RegEx
  id := WinExist("^Google Calendar -")
  if id {
    WinActivate, ^Google Calendar -
  }
  else {
    Run %chromeExe%  --profile-directory=Default --app-id=kbmfljidgdloamegjlahbininaboaagk
  }
Return

^+!G:: ;Gmail
  SetTitleMatchMode RegEx
  id := WinExist("- Gmail$")
  if id {
    WinActivate, Gmail$
  }
  else {
    Run %chromeExe%  --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj
  }
Return

^+!R:: ;My Github repository
  Run %chromeExe% https://github.com/lewdev?tab=repositories
Return

^+!D:: ;My Github repository
  Run %chromeExe% https://drive.google.com
Return

^+!Y:: ;Youtube
  Run %chromeExe% https://www.youtube.com
Return

^+!P:: ;Google Photos
  Run %chromeExe% https://photos.google.com
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
    Run %USERPROFILE%\apps\squirrel-sql-snapshot-20180729_2224\squirrel-sql.bat
  }
Return
