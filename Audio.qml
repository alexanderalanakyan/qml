pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.Pipewire


Singleton {
    /*
    Taken from https://github.com/caelestia-dots/shell/blob/54cdd80c1b7671deeb057cc554f83e436765596a/services/Audio.qml#L6 
    Or caelestia-shell by Soramane
    */
    id: root

    property string previousSinkName: ""
    property string previousSourceName: ""

    property list<PwNode> sinks: []
    property list<PwNode> sources: []
    property list<PwNode> streams: []

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode source: Pipewire.defaultAudioSource

    readonly property bool muted: !!sink?.audio?.muted
    readonly property real volume: sink?.audio?.volume ?? 0

    readonly property bool sourceMuted: !!source?.audio?.muted
    readonly property real sourceVolume: source?.audio?.volume ?? 0

    PwObjectTracker {
        objects: [root.sink, root.source]
    }
}