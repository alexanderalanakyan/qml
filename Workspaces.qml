import QtQuick
import Quickshell.Hyprland
Singleton {
    id: root
    readonly property var workspaces: Hyprland.workspaces.values;
    readonly property var currentWorkspace: Hyprland.focusedWorkspace;
}