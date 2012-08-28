tell application "iTerm"
  tell the current terminal
   tell the first session
    write text "tab_red Server"
   end tell

   tell the second session
    write text "tab_orange Console"
   end tell
   
   tell the third session
    write text "tab_blue SQL"
   end tell

   tell the fourth session
    write text "tab_green Tests"
   end tell

   tell the fifth session
    write text "tab_yellow Rake"
   end tell
  end tell
end tell
