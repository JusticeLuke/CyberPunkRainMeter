#Cyberpunk
Author: LJ
Verison: 1.0

=====TABLE OF CONTENTS=====

-1. Introduction
-2. Getting Started
-3. Adding Additional Icons
  --3.1 Creating your own glitch icon
-4. Using the Fade-In Script

========INTRODUCTION=======

The Cyberpunk nav bar is a heavily modded verison of the tinyLauncher by sketchl with fade animations 
by kaelri I used from rainmeter forums.

https://www.deviantart.com/sketchl/art/Tiny-Launcher-606028435
https://forum.rainmeter.net/viewtopic.php?f=99&t=12802

=======Getting Started======

The first thing to do is set the correct path for the icon. Go to the Variables section and correct the
names and links to match the programs you are using. 

Middle mouse click on the games icon will reveal three hidden icons. See the "Using the Fade-In Script"
for more information. 

====Adding Addtional Icons===

1. Go to the Variables section, and create a new name + link combo, e.g. name12 and link12
2. Go to the Icon section add a meter called [Icon10]. The x value will equal the icon # times 80. 
	ImageName is the file location of the Icon. I got all my icons for icon8.com and keep them 
	in the icons folder.
3. Go to the Icon Hover Image section. This is the meter that shows when the mouse hovers over an icon.
	The Hover Icons should be kept in Icons/Hover folder, and the x value should match the 
	corresponding icon x value.
4. Go to the Icon Click Action Image section. This is the meter that shows when an icon is clicked. The
	Click Action Icons should be kept in the Icons/Glitch folder, and the x value should match the 
	corresponding icon x value.

                           ==Creating Your Own Glitch Icon==

		1. Find the icon you would like to use. 
		2. Make sure the icon is white, on a transparent background
		3. Open the icon in a photo editor like gimp or photoshop
		4. Make two duplicate layers of the icon
		5. Expand the canvas size width and height by 8 pixels, but make sure to keep the 
			icon in the top left corner
		6. Use a color replace tool to change the first layer beneath the orginal icon yellow.
			For gimp: colors > map > color exchange
		7. This layer will be placed 1px to the right and 1px down from the orginal icon
		8. Make the bottom layer cyan
		9. This layer will be placed 2px to the right and 2px down from the orginal icon
		10. Export this image to icons/hover and it will serve as the hover icon
		11. Open the hover icon you just created.
		13. Create a selection two pixels tall for the length of the hover icon
		14. Cut and paste the selection in place
		15. Move that selection to the left or right 3-7px. Just make sure the strip isn't 
			being cut of by the edge of the canvas.
		16. Repeat this process 2-3 more times to achieve a glitch effect.
		17. Export the image to Icons/Gitch

=====Using the Fade-In Script=====

The fade-in script is used to slowly show 3 icons when the game's icon is pressed with the 
middlemouse. The three icons will disappear only when pressed or if the meter is refreshed.

Showing Additional Meters: add a reference of a meter to the measure [MeasureFade1] in the Fade 
control section. The actual meter should be placed in the Middle Mouse Click section. You can
copy the the meter [AltClickGames1] just make sure to change the values of ImageName, x, y, 
and the link in the LeftMouseUpAction variable.

How to add another fade-in group: 
	
	1. Copy the measure's [MeasureFade1] and [MeasureArray] found in the Fade Control section.
	2. Rename the measures to [MeasureFade2] and [MeasureArray2].
	3. In [MeasureArray2] change the measureName value to MeasureFade2.
	4. In [MeasureFade2] add the meters you want to fade in to MeterName. Each meter seperated by |
	5. Within the meters that are fading-in add the variables ImageTint and ImageTint2. ImageTint2
		is the intial color value(red,blue,green,transparency). The transparency of ImageTint 
		will change constantly using the provided script, so the transparency value will be 
		[MeasureFade2]*0.6. 
		e.g. ImageTint=255,255,255,([MeasureFade2]*0.6)
	6. Add [!refresh *] to your LeftMouseUpAction so the script will reset.

		