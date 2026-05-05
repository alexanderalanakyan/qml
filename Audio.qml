import QtQuick
import Quickshell.Services.Pipewire

Singleton {
    id: root
    
    readonly property int volume: {
    const sink = defaultSink
    return (sink && sink.audio) ? sink.audio.volume : 0
    }

    readonly property PwNode defaultSink: Pipewire.defaultAudioSink; 

}