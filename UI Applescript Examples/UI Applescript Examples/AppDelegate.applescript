--
--  AppDelegate.applescript
--  UI Applescript Examples
--
--  Created by Iain Moncrief on 5/19/17.
--  Copyright © 2017 Iain Moncrief. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
    
    property imageButton1 : missing value
    
    property label1 : missing value
	
    property progressBar : missing value
    
    property progressWheel : missing value
    
    property image1 : missing value
    

    
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
        
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
    
    on button1_(sender)
        tell progressWheel to startAnimation_(sender)
    end button1_
    
    on button2_(sender)
        tell progressWheel to stopAnimation_(sender)
    end button2_
    
    
    on imageButton_(sender)
        set newImage1 to current application's NSImage's imageNamed_("happy.png")
        imageButton1's setImage_(newImage1)
        label1's setStringValue_("I'm Happy!")
        delay 1
        label1's setStringValue_("4")
        delay 1
        label1's setStringValue_("3")
        delay 1
        label1's setStringValue_("2")
        delay 1
        label1's setStringValue_("1")
        delay 1
        label1's setStringValue_("I'm Sad, Click Me")
        set newImage1 to current application's NSImage's imageNamed_("sad.png")
        imageButton1's setImage_(newImage1)
    end imageButton_
    
end script