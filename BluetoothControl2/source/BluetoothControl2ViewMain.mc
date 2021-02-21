using Toybox.WatchUi;

class MainView extends WatchUi.View {
    function initialize() {
        View.initialize();
    }

    // Resources are loaded here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // onShow() is called when this View is brought to the foreground
    function onShow() {
    }

    // onUpdate() is called periodically to update the View
    function onUpdate(dc) {
        View.onUpdate(dc);
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
    	dc.clear();
    	
    	dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
	        dc.getWidth() / 2,                      // gets the width of the device and divides by 2
	        dc.getHeight() / 2,                     // gets the height of the device and divides by 2
	        Graphics.FONT_LARGE,                    // sets the font size
	        "New Menu",                          // the String to display
	        Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
	                );
    }

    // onHide() is called when this View is removed from the screen
    function onHide() {
    }
}