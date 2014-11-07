tell application "Finder"
	set n to count of window

	set screenSize to bounds of window of desktop
	set screenWidth to item 3 of screenSize
	set screenHeight to item 4 of screenSize
	if n is equal to 0 then return
	set windowWidth to screenWidth / n
	if (n > 0) then
		activate
		set w to 1
		repeat
			tell window w
				set bounds to {windowWidth * (w - 1), 0, windowWidth * w, (screenHeight / 3)}
			end tell
			set w to w + 1
			if w is equal to (n + 1) then exit repeat
		end repeat
	end if
end tell