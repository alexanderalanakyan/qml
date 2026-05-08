import QtQuick
import Quickshell
import QtQuick.Layouts


PanelWindow {
    color: "transparent"
    property var modelData;
    required property var atop
    required property  var abottom;
    required property  var aleft;
    required property  var aright;
    required property var barHeight;
    id: topbar
    
    anchors {
        top: atop
        bottom: abottom
        left: aleft
        right: aright
    }
    implicitHeight: barHeight
    Rectangle {
        id: rectBar
        color: Color.tokyoNight.bg
        anchors.fill: parent
        implicitHeight: parent.implicitHeight

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

        }
    