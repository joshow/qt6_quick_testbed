import QtQuick

Item {
    id: root

    required property int songIndex
    property alias title: titleText.text
    property alias authorName: authorText.text
    property alias imageColor: albumImage.color

    Rectangle {
        id: albumImage

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
        }

        width: 150
        height: 150
    }

    Text {
        id: titleText

        anchors {
            bottom: parent.verticalCenter
            left: albumImage.right
            margins: 20
            right: parent.right
        }

        color: "white"
        wrapMode: Text.WrapAtWordBoundaryOrAnyWhere

        font {
            pixelSize: 20
            bold: true
        }
    }

    Text {
        id: authorText

        anchors {
            bottom: parent.verticalCenter
            left: titleText.left
            topMargin: 20
            right: parent.right
        }

        color: "gray"
        wrapMode: Text.WrapAtWordBoundaryOrAnyWhere

        font {
            pixelSize: 16
        }
    }
}