using Toybox.System;
using Toybox.WatchUi as Ui;

using Toybox.BluetoothLowEnergy;

class MainViewDelegate extends Ui.BehaviorDelegate {
    // Detect Menu behavior
    function onMenu() {
        System.println("Menu behavior triggered");
        return false; // allow InputDelegate function to be called
    }
    
    var mainView = new MainView();
    
    function testBluetooth(){
    	
    }
    
    // Detect Menu button input
    function onKey(keyEvent) {
        System.println(keyEvent.getKey()); // e.g. KEY_MENU = 7
        if(keyEvent.getKey() == 4){
        	System.println("menu");
        	
        } else if(keyEvent.getKey() == 5){
        	Ui.popView(Ui.SLIDE_LEFT);
        }
        return true;
    }
}