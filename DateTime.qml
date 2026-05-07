pragma Singleton
import QtQuick
import Quickshell

Singleton {
    id: root
    
    property bool ampm: true

    readonly property string time: clock.date ? (ampm ? Qt.formatDateTime(clock.date, "hh:mm:ss AP t") : Qt.formatDateTime(clock.date, "HH:mm:ss t")) : "hi"

    readonly property string date: clock.date
        ? Qt.formatDateTime(clock.date, "dd ddd MMM yyyy")
        : ""

  
    SystemClock {
  id: clock
  precision: SystemClock.Seconds
}

}