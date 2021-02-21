using Toybox.WatchUi;
using Toybox.BluetoothLowEnergy;
using Toybox.System;

class BluetoothControl2View extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
    	dc.clear();
    	
    	dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
	        dc.getWidth() / 2,                      // gets the width of the device and divides by 2
	        dc.getHeight() / 2,                     // gets the height of the device and divides by 2
	        Graphics.FONT_LARGE,                    // sets the font size
	        "HELLO",                          // the String to display
	        Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
	                );
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
