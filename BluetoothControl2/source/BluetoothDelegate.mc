using Toybox.System;
using Toybox.WatchUi as Ui;

class BluetoothDelegate extends Ui.BehaviorDelegate {
    // Detect Menu behavior
    function onMenu() {
        System.println("Menu behavior triggered");
        return false; // allow InputDelegate function to be called
    }
    
    var mainView = new MainView();
    
    // Detect Menu button input
    function onKey(keyEvent) {
        System.println(keyEvent.getKey()); // e.g. KEY_MENU = 7
        if(keyEvent.getKey() == 4){
        	System.println("openMenu");
        	Ui.pushView( mainView, new MainViewDelegate(), Ui.SLIDE_RIGHT);
        }
        return true;
    }
}