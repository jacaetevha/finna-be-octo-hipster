tell application "iTerm"
  activate
  tell the current terminal
    set theRailsDir to choose folder with prompt "Select your Rails directory"

    repeat 6 times
      activate current session
      launch session "Default Session"
      tell the last session
        write text "cd " & (theRailsDir as string)
      end tell
    end repeat

    tell the last session
      write text "osascript '~/Library/Scripts/iterm_set_rails_tabs.scpt'"
    end tell
  end tell
end tell
