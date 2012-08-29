tell application "iTerm"
  activate
  tell the current terminal
    set d to choose folder with prompt "Select your Rails directory"
    set theRailsDir to POSIX path of d
    
    repeat 7 times
      activate current session
      launch session "Default Session"
      tell the last session
        write text "cd " & (theRailsDir as string)
        tell i term application "System Events" to keystroke "l" using control down
      end tell
    end repeat
    
    terminate the first session
    
    tell the last session
      write text "osascript ~/Library/Scripts/iterm_set_rails_tabs.scpt"
    end tell
    
  end tell
end tell

