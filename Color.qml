pragma Singleton
import QtQuick
import Quickshell

Singleton {
 id: root
 readonly property QtObject tokyoNight: QtObject{ 
    
    readonly property string red: "#f7768e"
    readonly property string orange: "#ff9e64"
    readonly property string yellow: "#e0af68"
    readonly property string fg_gutter: "#cfc9c2"
    readonly property string green: "#9ece6a"
    readonly property string teal: "#73dacb"
    readonly property string cyan_bright: "#b4f9f8"
    readonly property string cyan: "#2ac3de"
    readonly property string blue_bright: "#7dcfff"
    readonly property string blue: "#7aa2f7"
    readonly property string magenta: "#bb9af7"
    readonly property string fg: "#c0caf5"
    readonly property string fg_dark: "#a9b1d6"
    readonly property string comment: "#9aa5ce"
    readonly property string terminal_black: "#565f89"
    readonly property string bg_highlight: "#414868"
    readonly property string bg: "#1a1b26"
 }
}