

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Effects
import QtQuick3D.Helpers
import Robo
import Generated.QtQuick3D.Scene

Rectangle {
    id: rootRectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    property bool isPlaying: scene1.isPlaying
    property string currentState: "ToHero"

    View3D {
        id: extendedView3D
        anchors.fill: parent

        environment: sceneEnvironment

        ExtendedSceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                color: "white"
            }

            PerspectiveCamera {
                id: sceneCamera
                z: 350
            }

            Scene {
                id: scene1
                x: 2.593
                y: -100
                z: 34.97797
            }
        }
    }

    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            baseColor: "#4aee45"
        }
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

