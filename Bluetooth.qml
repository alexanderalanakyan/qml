pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Bluetooth

Singleton {
    id: root;
    readonly property QtObject devices: Bluetooth.devices;
    readonly property QtObject adapters: Bluetooth.adapters;
    property list<BluetoothDevice> currentDevices; 
    property BluetoothAdapter currentAdapter: Bluetooth.defaultAdapter;


        Repeater {
            model: devices
        }
    }