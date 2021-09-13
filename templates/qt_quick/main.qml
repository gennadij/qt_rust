import QtQuick 2.9
import QtQuick.Window 2.2
import RustCode 1.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.15


ApplicationWindow {
  id : appWindow
  visible: true
  title: "Basic layouts"
  property int margin: 11
  width: mainLayout.implicitWidth + 2 * margin
  height: mainLayout.implicitHeight + 2 * margin
  minimumWidth: mainLayout.Layout.minimumWidth + 2 * margin
  minimumHeight: mainLayout.Layout.minimumHeight + 2 * margin
  // color : "grey"

  // here is our Rust time
  // Time {
  //     id: time
  // }

  Radicand {
    id: radicand
  }
  
  ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: appWindow.margin
        GroupBox {
            id: rowBox
            title: "Row layout"
            Layout.fillWidth: true

            RowLayout {
                id: rowLayout
                anchors.fill: parent
                TextField {
                    placeholderText: "This wants to grow horizontally"
                    Layout.fillWidth: true
                }
                Button {
                    text: "Button"
                }
            }
        }
        GroupBox {
            id: gridBox
            title: "Grid layout"
            Layout.fillWidth: true

            GridLayout {
                id: gridLayout
                rows: 3
                flow: GridLayout.TopToBottom
                anchors.fill: parent

                Label { text: "Line 1" }
                Label { text: "Line 2" }
                Label { text: "Line 3" }

                TextField { }
                TextField { }
                TextField { }

                TextArea {
                    text: "This widget spans over three rows in the GridLayout.\n"
                        + "All items in the GridLayout are implicitly positioned from top to bottom."
                    Layout.rowSpan: 3
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
        TextArea {
            id: t3
            text: "This fills the whole cell"
            Layout.minimumHeight: 30
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        GroupBox {
            id: stackBox
            title: "Stack layout"
            implicitWidth: 200
            implicitHeight: 60
            Layout.fillWidth: true
            Layout.fillHeight: true
            StackLayout {
                id: stackLayout
                anchors.fill: parent

                function advance() { currentIndex = (currentIndex + 1) % count }

                Repeater {
                    id: stackRepeater
                    model: 5
                    Rectangle {
                        required property int index
                        color: Qt.hsla((0.5 + index) / stackRepeater.count, 0.3, 0.7, 1)
                        Button {
                            anchors.centerIn: parent
                            text: "Page " + (parent.index + 1)
                            onClicked: { stackLayout.advance() }
                        }
                    }
                }
            }


  // GridLayout {
    // id: grid
    // columns: 4
    // Label {
    //   text : "App für exacten Berechnung des Wurzels"
    //   font.pixelSize : 24
    //   color : "black"
    // }
    // Label {
      // text: "Radicand:  "
      // font.pixelSize: 18
      // color: "black"
    // }

    // TextField {
      // textColor : "black"
      // placeholderText: qsTr("Enter Radikand")
      
      // inputMask: qsTr("000000")
      // onEditingFinished: {
        // radicand.param = text
        
      // }
    // }
    // Button {
      // id : btCalc
      // text: "calc"
    // }
    
    // Text {
      // text : "Result : " + radicand.result
    }
  }
}
  

  

  
  // Item {
  //   // the clock face
  //   Image {
  //     anchors.fill: parent
  //     source: "rust-logo-blk.svg"
  //     fillMode: Image.PreserveAspectFit
  //     transform: Rotation {
  //         origin.x: width / 2
  //         origin.y: height / 2
  //         angle: time.second * 6 // convert seconds to degrees
  //     }
  //   }
  //   // the minute hand
  //   Rectangle {
  //     id: minute
  //     x: (parent.width - width) / 2
  //     y: 0
  //     width: parent.width / 100
  //     height: parent.height / 1.8
  //     radius: width
  //     color: "#3daefd"
  //     transform: Rotation {
  //         origin.x: hour.width / 2
  //         origin.y: height / 2
  //         // convert minutes to degrees
  //         angle: time.minute * 6
  //     }
  //   }
  //   // the hour hand
  //   Rectangle {
  //     id: hour
  //     x: (parent.width - width) / 2
  //     y: parent.height / 6
  //     width: parent.width / 50
  //     height: parent.height / 2.8
  //     radius: width
  //     color: "#3daefd"
  //     transform: Rotation {
  //         origin.x: hour.width / 2
  //         origin.y: height / 3
  //         // convert hours to degrees
  //         angle: time.hour * 30 + time.minute / 2
  //     }
  //   }
  // }
  
//}
