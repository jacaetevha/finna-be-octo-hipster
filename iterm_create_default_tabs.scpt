tell application "System Events"
	tell application "iTerm"
		activate
	end tell
	tell process "iTerm"
		click button 2 of window 1
	end tell
end tell

tell application "iTerm"
	
	tell the current terminal
		#set d to choose folder with prompt "Select your Rails directory"
		set theRailsDir to POSIX path of "/Users/jrogers/Documents/Programming/samasource/sh3"
		
		repeat while (count sessions) < 7
			activate current session
			launch session "Default Session"
			tell the last session
				write text "cd " & (theRailsDir as string)
				tell i term application "System Events" to keystroke "l" using control down
			end tell
		end repeat
		
		if (count sessions) > 7 then
			terminate the first session
		end if
		
		tell the last session
			write text "osascript ~/Library/Scripts/iterm_set_rails_tabs.scpt"
		end tell
		
		repeat with theSession in sessions
			select theSession
			tell i term application "System Events" to keystroke "l" using control down
		end repeat
		
		select the first session
		
		tell the first session
			tell i term application "System Events" to keystroke "l" using control down
			write text "cd " & (theRailsDir as string)
			write text "git pull"
		end tell
		
	end tell
end tell

