import QtQuick
import Quickshell
import QtQuick.Layouts

PanelWindow {
    property var modelData 
    required property var top
    required property  var bottom
    required property  var left
    required property  var right
    id: topbar
    color: "transparent"
    anchors {
        top: top
        bottom: bottom
        left: left
        right: right
    }
    implicitHeight: 50

    Rectangle {
        id: rectBar
        color: Color.tokyoNight.bg
        anchors.fill: parent
        bottomLeftRadius: 15.0
        bottomRightRadius: 15.0

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            spacing: 8

            Text {
                font.pixelSize: 14
                text: "Vol: " + Math.round(Audio.volume * 100) + "% \ue638"
                color: Audio.muted ? Color.tokyoNight.red : Color.tokyoNight.terminal_black
            }

            Text {
                font.pixelSize: 14
                text: DateTime.time + " \uf017"
                color: Color.tokyoNight.terminal_black
            }

            Text {
                font.pixelSize: 14
                text: DateTime.date + " \uf073"
                color: Color.tokyoNight.terminal_black
            }

         Repeater {
            model: Workspaces.num > 9 ? Workspaces.num : 9
                Text {
                    font.pixelSize: 16
                    text: index +1
                    color: index +1 === Workspaces.cw.id ? Color.tokyoNight.blue : Color.tokyoNight.terminal_black
                    MouseArea {
                    enabled: true
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked : Workspaces.setWorkspace(index+1)
                }
                }
                
            } Text {
                font.pixelSize: 14
                text: "\ue893"
                color: Color.tokyoNight.terminal_black
            }
            Item { Layout.fillWidth: true }
         }

         
        }
   Component.onCompleted: Qt.callLater(function() {
    var adapters = Bluetooth.adapters.values
    if (adapters.length === 0) {
        console.log("no adapters found")
        return
    }
    var devices = adapters[0].devices.values
    console.log("devices length:", devices.length)
    for (var i = 0; i < devices.length; i++) {
        var device = devices[i]
        for (var prop in device) {
            console.log(prop, ":", device[prop])
        }
    }
})

        }
    