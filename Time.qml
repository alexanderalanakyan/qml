import QtQuick
import Quickshell 

Singleton {
    id: root
    property boolean ampm: true
    readonly property string time: 
    ampm 
    ? Qt.formatDateTime(clock.date, "hh:mm:ss AP") 
    : Qt.formatDateTime(clock.date, "HH:mm:ss")

    readonly property string date: Qt.formatDateTime(clock.date, "yyyy-MMMM-ddd")
    SystemClock {
  id: clock
  precision: SystemClock.Seconds
}

}