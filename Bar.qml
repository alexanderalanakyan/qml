import QtQuick
import Quickshell
import QtQuick.Layouts

PanelWindow {
    property var modelData;
    id: topbar
    color: "transparent"
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 50

    Rectangle {
        id: rectBar
        color: Color.tokyoNight.bg
        anchors.fill: parent
        bottomLeftRadius: 10.0
        bottomRightRadius: 10.0

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
                    font.pixelSize: 14
                    text: index +1
                    color: index +1 === Workspaces.cw.id ? Color.tokyoNight.blue : Color.tokyoNight.terminal_black
                    MouseArea {
                    enabled: true
                    anchors.fill: parent
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
    }