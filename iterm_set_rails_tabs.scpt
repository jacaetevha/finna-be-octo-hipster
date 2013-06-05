tell application "iTerm"
  tell the current terminal
   tell the first session
    #select current session
    write text "tab_red Server"
   end tell

   tell the second session
    #select current session
    write text "tab_orange Console"
   end tell

   tell the third session
    #select current session
    write text "tab_blue SQL"
   end tell

   tell the fourth session
    #select current session
    write text "tab_blue mongod"
    write text "sudo mongod"
    write text "<mah password heah>"
   end tell

   tell the fifth session
    #select current session
    write text "tab_blue mongo"
   end tell

   tell the sixth session
    #select current session
    write text "tab_green Tests"
   end tell

   tell the seventh session
    #select current session
    write text "tab_yellow Rake"
   end tell

   select the first session
  end tell
end tell
