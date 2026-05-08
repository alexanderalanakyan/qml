pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Bluetooth
import "./Parse.js" as Parse

Singleton {
    id: root;
    readonly property var devices: Parse.parseCircularList(Bluetooth.devices);
    readonly property var adapters: Parse.parseCircularList(Bluetooth.adapters);
    readonly property var currentAdapter: Parse.parseCircularList(Bluetooth.defaultAdapter);


        
    }