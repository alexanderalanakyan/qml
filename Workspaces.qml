pragma Singleton
import QtQuick
import Quickshell.Hyprland
import Quickshell

Singleton {
    id: root
    readonly property var ws: Hyprland.workspaces;
    readonly property var cw: Hyprland.focusedWorkspace;
    readonly property var num: ws.length;
    function setWorkspace(id: int) {
        Hyprland.dispatch(`workspace ${id}`)
    }
}