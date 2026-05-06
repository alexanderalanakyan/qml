pragma Singleton
import QtQuick
import Quickshell

Singleton {
    id: root
    
    property bool ampm: true

    readonly property string time: clock.date ? (ampm ? Qt.formatDateTime(clock.date, "hh:mm:ss AP") : Qt.formatDateTime(clock.date, "HH:mm:ss")) : "hi"

    readonly property string date: clock.date
        ? Qt.formatDateTime(clock.date, "ddd MMM yyyy")
        : ""

  
    SystemClock {
  id: clock
  precision: SystemClock.Seconds
}

}