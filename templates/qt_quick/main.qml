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
          id : textRadicand
          placeholderText: "Tragen Sie die Radikand ein"
          Layout.fillWidth: true
        }
        Button {
          text: "Berechnen"
          onClicked: {
            radicand.param = textRadicand.text
            console.log(textRadicand.text)
          }
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

        Label { text: "Ergebnis der Berechnung" }
        Label { text: "Line 2" }
        Label { text: "Line 3" }

        TextField { 
          text : "Result : " + radicand.result
          readOnly: treu 
        }
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
    }
  }
}
