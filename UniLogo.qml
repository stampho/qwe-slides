import QtQuick 2.0

Rectangle {
    id: root

    property int orentation: Qt.Horizontal

    function isHorizontal() {
        return root.orentation == Qt.Horizontal;
    }

    color: "transparent"

    border.color: "black"
    border.width: 0

    Rectangle {
        id: logo

        width: 680
        height: 80

        property int leftMargin: 10
        property int topMargin: 10

        color: "transparent"

        border.width: parent.border.width
        border.color: parent.border.color

        transform: [
            Rotation {
                origin.x: 0
                origin.y: 0
                angle: root.isHorizontal() ? 0.0 : -90.0

            },
            Scale {
                origin.x: 0
                origin.y: 0

                xScale: root.isHorizontal() ? root.width / logo.width : root.height / logo.width
                yScale: xScale
            },
            Translate {
                x: 0
                y: root.isHorizontal() ? 0 : root.height
            }
        ]

        Text {
            id: firstLine
            x: parent.x + parent.leftMargin
            y: parent.y + parent.topMargin
            text: "UNIVERSITAS SCIENTIARUM SZEGEDIENSIS"
            color: "#002285"
            font.pixelSize: 22
            font.family: "Arial"
        }

        Text {
            x: parent.x + parent.leftMargin + 375
            y: parent.y + parent.topMargin + 18
            text: "UNIVERSITY OF SZEGED"
            color: "#002285"
            font.pixelSize: 22
            font.weight: Font.ExtraBold
            font.family: "Arial Black"
        }

        Text {
            x: parent.x + parent.leftMargin + 300
            y: parent.y + parent.topMargin + 35
            text: "Department of Software Engineering"
            color: "#C09100"
            font.pixelSize: 22
            font.italic: true
            font.family: "Times New Roman"
        }

        Rectangle {
            x: parent.x + parent.leftMargin + 645
            y: parent.y + parent.topMargin + 5
            width: 15
            height: 15
            color: "#C09100"
        }
    }
}
