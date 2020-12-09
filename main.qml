import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Window 2.13

import "qml/"

Instantiator {
    id: windowInstantiator

    property var visibility: ApplicationWindow.Windowed

    model: ApplicationDataModel

    delegate: Window {
        id: applicationWindow

        property string device: model.deviceInfo

        visibility: windowInstantiator.visibility
        visible: true

        title: model.title
        objectName: model.objectName
        width: model.width
        height: model.height
        x: model.x
        y: model.y

        MainArea {
            device: applicationWindow.device
        }
    }
}
