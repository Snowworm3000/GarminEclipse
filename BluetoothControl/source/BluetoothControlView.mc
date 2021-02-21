using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.BluetoothLowEnergy;
using Toybox.Lang;
using Toybox.System;

class BluetoothControlView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
//        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }
    
    var response = "none";
    
    
    function printText(dc,data){
    	dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
	        dc.getWidth() / 2,                      // gets the width of the device and divides by 2
	        dc.getHeight() / 2,                     // gets the height of the device and divides by 2
	        Graphics.FONT_LARGE,                    // sets the font size
	        data,                          // the String to display
	        Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
	                );
	    
    }

    // Update the view
    function onUpdate(dc) {
    	System.println( "Hello Monkey C!" );
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
    	dc.clear();
    	
    	printText(dc,response);
    
        
    }
    
    function onPartialUpdate(dc){
//    	System.println("hi");
    	dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
    	dc.clear();
    	printText(dc,response);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
