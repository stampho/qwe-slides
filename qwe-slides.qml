import Qt.labs.presentation 1.0
import QtQuick 2.0

Presentation {
    id: presentation

    width: 1280
    height: 720

    property string fontFamily: "Arial"

    SlideCounter {
        textColor: "white"
    }

    Clock {
        textColor: "white"
    }

    Rectangle {
        id: background

        anchors.fill: parent
        color: "white"

        UniLogo {
            id: header

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            height: parent.height * 0.08

            orentation: Qt.Horizontal
        }

        UniLogo {
            id: lefter

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: footer.top

            anchors.topMargin: 20
            anchors.bottomMargin: 20

            width: parent.width * 0.05

            orentation: Qt.Vertical

            visible: false
        }

        Rectangle {
            id: footer

            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            height: parent.height * 0.06

            color: "#002285"
        }

        z: -2
    }

    Slide {
        centeredText: "<b>QtWebEngine Demo</b><br><i>(2016-10-11)</i>"
        textFormat: Text.StyledText

        onVisibleChanged: {
            if (visible) {
                header.visible = true;
                lefter.visible = false;
            }
        }
    }

    Slide {
        title: "Slide 1"
        content: [
            "Line 1",
            "Line 2",
            " Subline 1"
        ]

        Rectangle {
            anchors.fill: parent
            color: "gray"
            radius: 8
            opacity: 0.5
            border.color: "black"
            border.width: 1
            z: -1
        }

        onVisibleChanged: {
            if (visible) {
                header.visible = false;
                lefter.visible = true;
            }
        }
    }

    Slide {
        title: "Slide 2"
        writeInText: "
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut elementum mauris, non iaculis lorem.
            Donec a sem ut nulla vulputate aliquam. Aenean vehicula sem a nisi sagittis, a pellentesque justo sagittis."

        onVisibleChanged: {
            if (visible) {
                header.visible = false;
                lefter.visible = true;
            }
        }
    }
}
