import QtQuick 2.1
import QtMultimedia 5.8

Item {

    Rectangle {
        anchors.fill: parent
        color: "black"
    }

    AnimatedImage {
        id: animation
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "media/deck_startup.gif"
        cache: false
        onFrameChanged: if (currentFrame == frameCount - 1) playing = false
    }

    Audio {
        id: sound
        source: "media/deck_startup.wav"
        autoLoad: true
        autoPlay: true
    }
}
