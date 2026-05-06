import QtQuick
import Quickshell



Variants {
    model: Quickshell.screens
    delegate: Bar{top: true; left: true; right: true; bottom: false}
} 
