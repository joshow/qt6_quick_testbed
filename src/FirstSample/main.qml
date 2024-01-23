import QtQuick
import QtQuick.Window

Window {
    id: root;

    width: 640
    height: 480

    visible: true

    title: qsTr("Song Player")

    Rectangle {
        id: tapbar

        anchors  {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        height: 50
        color: "#5F8575"
    }

    Rectangle {
        id: mainSection

        anchors {
            top: tapbar.bottom
            bottom: bottombar.top
            left: parent.left
            right: parent.right
        }

        color: "#1e1e1e"

        AudioInfoBox {
            id: firstSong

            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                right: parent.right
                margins: 20
            }

            songIndex: 0
            title: "This my qml song"
            authorName: "Wolfgang Amadeus Mozart"
            imageColor: "red"
        }
    }

    Rectangle {
        id: bottombar

        anchors  {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }

        height: 100
        color: "#333333"
    }
}

