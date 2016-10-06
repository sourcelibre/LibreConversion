/**
 * Unit Conversion app.
 * Multi-lingual application for Android and iOS.
 */

import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Unit Conversion")
    Material.theme: Material.Dark
    Material.accent: Material.color(Material.Purple)

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            Column {
                anchors.centerIn: parent

                Label {
                    text: qsTr("Distances")
                }

                GridLayout {
                    columns: 2

                    FloatSpinBox {
                        id: spinbox_m
                        onValueChanged: {
                            spinbox_m.value = this.value * 1000
                            console.log("spinbox_km: " + spinbox_km.value)
                            console.log("spinbox_m: " + spinbox_m.value)
                        }
                    }
                    Label {
                        text: qsTr("m")
                    }

                    FloatSpinBox {
                        id: spinbox_km
                        onValueChanged: {
                            spinbox_m.value = this.value / 1000
                            console.log("spinbox_km: " + spinbox_km.value)
                            console.log("spinbox_m: " + spinbox_m.value)
                        }
                    }
                    Label {
                        text: qsTr("km")
                    }
                }
            }
        }

        Page {
            Label {
                text: qsTr("Weights")
                anchors.centerIn: parent
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Distances")
        }
        TabButton {
            text: qsTr("Weights")
        }
    }
}
