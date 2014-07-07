tell application "iTerm"
  tell the current terminal
   tell the first session
    #select current session
    write text "tab_red '1 Server'"
   end tell

   tell the second session
    #select current session
    write text "tab_orange '2 Console'"
   end tell

   tell the third session
    #select current session
    write text "tab_blue '3 SQL'"
   end tell

   tell the fourth session
    #select current session
    write text "tab_blue '4 mongod'"
    write text "sudo mongod"
    write text "<mah password heah>"
   end tell

   tell the fifth session
    #select current session
    write text "tab_blue '5 mongo'"
   end tell

   tell the sixth session
    #select current session
    write text "tab_green '6 Tests'"
   end tell

   tell the seventh session
    #select current session
    write text "tab_yellow '7 Rake'"
   end tell

   select the first session
  end tell
end tell
