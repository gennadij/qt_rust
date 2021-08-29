import QtQuick 2.5
import QtQuick.Window 2.2
import RustCode 1.0

Window {
    width: 512
    height: 512
    visible: true

    // here is our Rust time
    Time {
        id: time
    }

    // the clock face
    Image {
        anchors.fill: parent
        source: "rust-logo-blk.svg"
        fillMode: Image.PreserveAspectFit
        transform: Rotation {
            origin.x: width / 2
            origin.y: height / 2
            angle: time.second * 6 // convert seconds to degrees
        }
    }
    // the minute hand
    Rectangle {
        id: minute
        x: (parent.width - width) / 2
        y: 0
        width: parent.width / 100
        height: parent.height / 1.8
        radius: width
        color: "#3daefd"
        transform: Rotation {
            origin.x: hour.width / 2
            origin.y: height / 2
            // convert minutes to degrees
            angle: time.minute * 6
        }
    }
    // the hour hand
    Rectangle {
        id: hour
        x: (parent.width - width) / 2
        y: parent.height / 6
        width: parent.width / 50
        height: parent.height / 2.8
        radius: width
        color: "#3daefd"
        transform: Rotation {
            origin.x: hour.width / 2
            origin.y: height / 3
            // convert hours to degrees
            angle: time.hour * 30 + time.minute / 2
        }
    }
}
