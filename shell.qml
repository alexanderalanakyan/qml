import Quickshell
import QtQuick
import Quickshell.Io

Process {
    running: true
    command: ['pkill', 'quickshell']
    onRunningChanged: if (!running) running = true
}