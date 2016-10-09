import Qt.labs.presentation 1.0
import QtQuick 2.0

Presentation {
    id: presentation

    width: 1280
    height: 720

    fontFamily: "Arial"
    bulletSpacing: 0.5
    bulletColor: "#C09100"
    contentMargin: 20
    slideTitleAlignment: Text.AlignLeft

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

            height: parent.height * 0.1

            orentation: Qt.Horizontal

            border.width: 0
        }

        Image {
            source: "images/griff.png"

            visible: header.visible
            opacity: 0.15

            width: sourceSize.width * (height / sourceSize.height)
            height: presentation.width / 4

            anchors.top: header.bottom
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 20
        }

        UniLogo {
            id: lefter

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: footer.top

            width: parent.width * 0.08

            orentation: Qt.Vertical

            border.width: 0
        }

        Image {
            source: "images/griff.png"

            visible: lefter.visible
            opacity: 0.15

            width: sourceSize.width * (height / sourceSize.height)
            height: presentation.height / 5

            anchors.bottom: footer.top
            anchors.bottomMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: lefter.width / 3
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
            } else {
                header.visible = false;
                lefter.visible = true;
            }
        }
    }

    Slide {
        title: "General"
        content: [
            "Overview since:",
            "TODO"
        ]

        anchors.left: parent.left
        anchors.leftMargin: lefter.width + 50
        anchors.right: parent.right
        anchors.rightMargin: 50
    }

    Slide {
        centeredText: "<b>Bugs</b>"
        textFormat: Text.StyledText

        AnimatedImage {
            anchors.top: parent.top
            anchors.horizontalCenter:  parent.horizontalCenter
            source: "images/bug.gif"
            z: -1
        }
    }

    Slide {
        centeredText: "<b>Features</b>"
        textFormat: Text.StyledText

        AnimatedImage {
            anchors.top: parent.top
            anchors.horizontalCenter:  parent.horizontalCenter
            source: "images/motiv_penguin.gif"
            z: -1
        }
    }

    Slide {
        centeredText: "<b>Testing</b>"
        textFormat: Text.StyledText

        AnimatedImage {
            anchors.top: parent.top
            anchors.horizontalCenter:  parent.horizontalCenter
            source: "images/gears.gif"
            z: -1
        }
    }

    Slide {
        title: "Slide 1"
        content: [
            "Line 1",
            "Line 2",
            " Subline 1",
            "  SubSubline 1"
        ]

        Rectangle {
            anchors.fill: parent
            color: "gray"
            radius: 8
            opacity: 0.2
            border.color: "black"
            border.width: 1
            z: -1

            // Hide this for now, this is just an example
            visible: false
        }

        anchors.left: parent.left
        anchors.leftMargin: lefter.width + 50
        anchors.right: parent.right
        anchors.rightMargin: 50
    }

    Slide {
        title: "Slide 2"
        writeInText: "
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ut elementum mauris, non iaculis lorem.
            Donec a sem ut nulla vulputate aliquam. Aenean vehicula sem a nisi sagittis, a pellentesque justo sagittis."

        anchors.left: parent.left
        anchors.leftMargin: lefter.width + 50
        anchors.right: parent.right
        anchors.rightMargin: 50
    }

    Slide {
        centeredText: "<b>Thank You For Your Attention!</b>"
        textFormat: Text.StyledText

        AnimatedImage {
            anchors.top: parent.top
            anchors.horizontalCenter:  parent.horizontalCenter
            source: "images/penguin_go.gif"
            z: -1
        }
    }
}
