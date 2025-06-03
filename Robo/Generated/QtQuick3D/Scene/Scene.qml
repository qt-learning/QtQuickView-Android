import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    scale.x: 100
    scale.y: 100
    scale.z: 100

    // Resources
    Texture {
        id: textures_Mirage_0_Body_diffuse_png_texture
        objectName: "textures/Mirage_0_Body_diffuse.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/Mirage_0_Body_diffuse.png"
    }
    Texture {
        id: textures_Mirage_0_Body_specularGlossiness_png_texture
        objectName: "textures/Mirage_0_Body_specularGlossiness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/Mirage_0_Body_specularGlossiness.png"
    }
    Texture {
        id: textures_Mirage_0_Body_normal_png_texture
        objectName: "textures/Mirage_0_Body_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/Mirage_0_Body_normal.png"
    }
    SpecularGlossyMaterial {
        id: mirage_0_Body_material
        objectName: "Mirage_0_Body"
        albedoMap: textures_Mirage_0_Body_diffuse_png_texture
        specularMap: textures_Mirage_0_Body_specularGlossiness_png_texture
        glossinessMap: textures_Mirage_0_Body_specularGlossiness_png_texture
        normalMap: textures_Mirage_0_Body_normal_png_texture
        cullMode: SpecularGlossyMaterial.NoCulling
        alphaMode: SpecularGlossyMaterial.Opaque
    }
    Skin {
        id: skin
        joints: [
            _rootJoint,
            transformer_Rig_01,
            bn_pelvis01_02,
            bn_chest01_03,
            bn_backwing01_04,
            bn_l_shoulder01_07,
            bn_l_upperarm01_08,
            bn_l_forearm01_09,
            bn_l_wrist01_010,
            bn_l_fingers01_011,
            bn_l_fingers_mid01_012,
            bn_l_fingers_tip01_013,
            bn_l_thumb01_014,
            bn_l_thumb_mid01_015,
            bn_l_thumb_tip01_016,
            bn_l_weapon_017,
            attachment_l_01_018,
            fx_hand_l01_019,
            bn_neck01_020,
            bn_head01_021,
            bn_head_attachment01_022,
            attachment_head01_00,
            bn_nose01_023,
            bn_cockpit01_024,
            bn_frontwing01_025,
            bn_nosetip01_026,
            bn_l_front_wheel01_027,
            bn_r_front_wheel01_028,
            bn_nose_part01_029,
            bn_r_shoulder01_030,
            bn_r_upperarm01_031,
            bn_r_forearm01_032,
            bn_r_wrist01_033,
            bn_r_fingers01_034,
            bn_r_fingers_mid01_035,
            bn_r_fingers_tip01_036,
            bn_r_thumb01_037,
            bn_r_thumb_mid01_038,
            bn_r_thumb_tip01_039,
            bn_r_weapon_040,
            attachment_r_01_041,
            bn_r_weapon_melee01_042,
            attachment_r_02_043,
            fx_hand_r01_044,
            fx_damage03_045,
            bn_chest_attachment01_05,
            attachment_chest01_06,
            fx_damage01_046,
            fx_impact01_047,
            bn_l_thigh01_048,
            bn_l_knee01_049,
            bn_l_back_wheel01_050,
            bn_l_foot01_051,
            bn_l_toe01_052,
            fx_foot_l01_053,
            bn_r_thigh01_054,
            bn_r_knee01_055,
            bn_r_back_wheel01_056,
            bn_r_foot01_057,
            bn_r_toe01_058,
            fx_foot_r01_059,
            fx_damage02_060,
            fx_ground01_061
        ]
        inverseBindPoses: [
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 4.72863e-38, 4.25917e-24, 4.01282e-20, -9.45725e-38, 1, 1.11022e-14, -1.10842, -4.25917e-24, -1.11022e-14, 1, -0.0335991, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.8644e-25, 7.92491e-25, 1.56647e-23, 2.8644e-25, 1, 0, -1.50964, -7.92491e-25, 0, 1, 0.216459, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0.998529, -4.56374e-11, -0.0542188, -0.345726, -0.0542188, -2.90791e-09, -0.998529, 0.0270218, -1.12093e-10, 1, -2.9061e-09, -1.53469, 0, 0, 0, 1),
            Qt.matrix4x4(0.99947, 1.40496e-10, 0.0325409, -0.346266, -0.0325409, 2.90285e-09, 0.99947, 0.0183501, 4.59606e-11, -1, 2.90588e-09, 1.25273, 0, 0, 0, 1),
            Qt.matrix4x4(-0.99947, 2.95974e-12, -0.0325409, 0.346556, 0.0325409, -1.85803e-10, -0.999471, -0.00942197, -9.00435e-12, -1, 1.85608e-10, 0.978437, 0, 0, 0, 1),
            Qt.matrix4x4(0.0599185, 0.998168, -0.00835206, -0.869653, 0.98861, -0.0581834, 0.138796, -0.296817, 0.138055, -0.0165734, -0.990286, -0.00821792, 0, 0, 0, 1),
            Qt.matrix4x4(-0.626147, -0.779595, 0.0130473, 0.835781, -0.779533, 0.626273, 0.0104752, -0.231486, -0.0163376, -0.00361173, -0.99986, 0.0347318, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(-1, -1.84034e-09, 2.68348e-09, 0.3581, 1.45519e-09, 0.484693, 0.874684, -0.505371, -2.91038e-09, 0.874684, -0.484693, -0.756187, 0, 0, 0, 1),
            Qt.matrix4x4(1, 2.99699e-09, -3.17432e-09, -0.356598, -4.36557e-09, 0.686505, -0.727125, -0.535168, -1.00034e-16, 0.727125, 0.686505, -0.717784, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(2.83274e-16, -0.99999, -0.00438856, 1.65062, 2.82034e-16, 0.00438856, -0.99999, -0.00724392, 1, 2.82034e-16, 2.83274e-16, -3.57447e-16, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, -1.86405e-26, 9.95092e-24, 7.82314e-24, 1.86405e-26, 1, 2.91038e-09, -1.50563, -9.95092e-24, -2.91038e-09, 1, -0.0368782, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 3.87741e-24, 2.31928e-23, 1.12847e-32, 1, -2.91038e-09, -1.41603, -3.87741e-24, 2.91038e-09, 1, 0.049525, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.33335e-25, 8.18336e-24, -1.11491e-23, -1.33335e-25, 1, 0, -1.17513, -8.18336e-24, 0, 1, 0.0435727, 0, 0, 0, 1),
            Qt.matrix4x4(1, 1.33335e-25, 8.18336e-24, 2.32375e-24, -1.33335e-25, 1, 0, -1.11838, -8.18336e-24, 0, 1, 0.0183549, 0, 0, 0, 1),
            Qt.matrix4x4(1, 2.32831e-08, -7.27596e-10, -0.0999, -2.32831e-08, 1, 1.69407e-17, -1.52871, 7.27596e-10, 2.01948e-24, 1, 0.201261, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, -7.27596e-10, 0.0999003, -1.2326e-26, 1, -1.69407e-17, -1.52871, 7.27596e-10, 1.69407e-17, 1, 0.201261, 0, 0, 0, 1),
            Qt.matrix4x4(1, -2.10774e-26, -2.94259e-24, -4.82801e-24, 2.10774e-26, 1, 0, -1.27718, 2.94259e-24, 0, 1, -0.0156038, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(-0.998529, 6.93819e-11, -0.0542188, -0.345726, 0.0542188, -2.9339e-09, -0.998529, 0.0270219, -2.28353e-10, -1, 2.92583e-09, 1.53469, 0, 0, 0, 1),
            Qt.matrix4x4(-0.999471, 9.01633e-11, 0.0325409, -0.346272, 0.0325409, 2.55761e-14, 0.99947, 0.0183503, 9.01147e-11, 1, -2.95956e-12, -1.25273, 0, 0, 0, 1),
            Qt.matrix4x4(-0.99947, 7.39583e-13, 0.0325409, -0.34656, 0.0325409, -9.09736e-11, 0.99947, 0.0094242, 3.69955e-12, 1, 9.09014e-11, -0.978433, 0, 0, 0, 1),
            Qt.matrix4x4(0.0599271, -0.998168, 0.00835207, 0.869651, 0.988613, 0.0605063, 0.137784, 0.287712, -0.138036, 1.14025e-09, 0.990427, -0.0734013, 0, 0, 0, 1),
            Qt.matrix4x4(0.626144, -0.779707, 1.49487e-10, 0.83621, 0.779707, 0.626144, 1.86149e-10, -0.231043, -2.38742e-10, 1.13365e-17, 1, -0.0262451, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 2.91038e-09, -6.88516e-10, 0.358103, 2.91038e-09, -1, -1.22465e-16, 0.90637, -6.88516e-10, 1.20461e-16, -1, 0.0755192, 0, 0, 0, 1),
            Qt.matrix4x4(1, 2.91038e-09, -6.88516e-10, 0.356602, 2.91038e-09, -1, -1.22465e-16, 0.88931, -6.88516e-10, 1.20461e-16, -1, 0.103627, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(4.25456e-14, -0.99653, 0.0832368, 1.07706, 3.00363e-14, 0.0832368, 0.99653, -0.115869, -1, -3.98979e-14, 3.34734e-14, 0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(3.40318e-14, -0.987055, -0.16038, 0.640048, -3.94412e-14, 0.16038, -0.987055, -0.0476801, 1, 3.99169e-14, -3.34726e-14, -0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(1, -1.10701e-14, -4.18909e-14, -0.278316, 1.10701e-14, 1, -2.91038e-09, -0.188786, 4.18909e-14, 2.91038e-09, 1, -0.00984541, 0, 0, 0, 1),
            Qt.matrix4x4(3.46601e-14, -0.0345323, 0.999404, -0.0236972, 1.49011e-08, 0.999404, 0.0345323, -0.145503, -1, 1.48922e-08, 5.14604e-10, 0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(-9.40169e-07, 0.99653, -0.0832368, -1.07705, -6.19638e-06, -0.0832368, -0.99653, 0.115868, -1, -4.2114e-07, 6.25313e-06, -0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(5.8719e-07, 0.987055, 0.16038, -0.640048, 6.23973e-06, -0.16038, 0.987055, 0.047681, 1, 4.2114e-07, -6.25313e-06, 0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(1, 6.61438e-06, -5.24683e-06, 0.278319, -6.61438e-06, 1, 3.47045e-11, -0.188788, 5.24683e-06, -5.54743e-19, 1, -0.00984396, 0, 0, 0, 1),
            Qt.matrix4x4(-5.85573e-12, 0.0345323, -0.999404, 0.0236973, -2.27294e-11, -0.999404, -0.0345323, 0.145503, -1, 2.25136e-11, 6.63713e-12, -0.140143, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
            Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 157.171
        scale.y: 157.171
        scale.z: 157.171
        Node {
            id: main_fbx
            objectName: "main.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.01
            scale.y: 0.01
            scale.z: 0.01
            Node {
                id: object_2
                objectName: "Object_2"
                Node {
                    id: rootNode
                    objectName: "RootNode"
                    Node {
                        id: trp_mirage_lod0
                        objectName: "trp_mirage_lod0"
                        Node {
                            id: main
                            objectName: "main"
                            Node {
                                id: object_6
                                objectName: "Object_6"
                                Node {
                                    id: _rootJoint
                                    objectName: "_rootJoint"
                                    Node {
                                        id: transformer_Rig_01
                                        objectName: "Transformer_Rig_01"
                                        Node {
                                            id: bn_pelvis01_02
                                            objectName: "bn_pelvis01_02"
                                            x: -4.013115855649884e-20
                                            y: 1.1084187030792236
                                            z: 0.033599093556404114
                                            Node {
                                                id: bn_chest01_03
                                                objectName: "bn_chest01_03"
                                                x: 9.855507597478582e-17
                                                y: 0.04171043261885643
                                                z: 0.00033622028422541916
                                                Node {
                                                    id: bn_backwing01_04
                                                    objectName: "bn_backwing01_04"
                                                    x: -9.851494117146475e-17
                                                    y: 0.35950613021850586
                                                    z: -0.2503948211669922
                                                }
                                                Node {
                                                    id: bn_l_shoulder01_07
                                                    objectName: "bn_l_shoulder01_07"
                                                    x: 0.23927505314350128
                                                    y: 0.3806871473789215
                                                    z: -0.033935315907001495
                                                    Node {
                                                        id: bn_l_upperarm01_08
                                                        objectName: "bn_l_upperarm01_08"
                                                        x: 0.10740768164396286
                                                        y: 0.003871520981192589
                                                        z: 0.008237214758992195
                                                        rotation: Qt.quaternion(0.706847, -0.706847, 0.0191763, 0.0191763)
                                                        Node {
                                                            id: bn_l_forearm01_09
                                                            objectName: "bn_l_forearm01_09"
                                                            x: 0.0008266952936537564
                                                            y: 0.015287414193153381
                                                            z: -0.2819545567035675
                                                            rotation: Qt.quaternion(-6.14129e-17, 0.999059, -0.0433824, -2.82995e-18)
                                                            Node {
                                                                id: bn_l_wrist01_010
                                                                objectName: "bn_l_wrist01_010"
                                                                x: 0.00029078201623633504
                                                                y: 0.00892807636409998
                                                                z: 0.27429598569869995
                                                                rotation: Qt.quaternion(6.12323e-17, 4.90927e-16, -4.20905e-16, 1)
                                                                Node {
                                                                    id: bn_l_fingers01_011
                                                                    objectName: "bn_l_fingers01_011"
                                                                    x: -0.0007788724033161998
                                                                    y: -0.0239225123077631
                                                                    z: 0.12778373062610626
                                                                    rotation: Qt.quaternion(0.461087, -0.507534, 0.483862, 0.543769)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                    Node {
                                                                        id: bn_l_fingers_mid01_012
                                                                        objectName: "bn_l_fingers_mid01_012"
                                                                        x: -0.05408241227269173
                                                                        y: -5.551115123125783e-17
                                                                        z: 4.163336342344337e-17
                                                                        rotation: Qt.quaternion(-0.302704, -0.0217588, -0.0745035, 0.949919)
                                                                        scale.x: 1
                                                                        scale.y: 1
                                                                        scale.z: 1
                                                                        Node {
                                                                            id: bn_l_fingers_tip01_013
                                                                            objectName: "bn_l_fingers_tip01_013"
                                                                            x: 0.04531422629952431
                                                                            y: -9.292218237533234e-06
                                                                            z: 0.0005912118358537555
                                                                            rotation: Qt.quaternion(8.63562e-16, -0.43235, 0.901706, 4.81968e-16)
                                                                            scale.x: 1
                                                                            scale.y: 1
                                                                            scale.z: 1
                                                                        }
                                                                    }
                                                                }
                                                                Node {
                                                                    id: bn_l_thumb01_014
                                                                    objectName: "bn_l_thumb01_014"
                                                                    x: -0.01381123997271061
                                                                    y: -0.07325034588575363
                                                                    z: 0.07206272333860397
                                                                    rotation: Qt.quaternion(-0.250282, 0.968036, -0.0157546, 0.00407328)
                                                                    Node {
                                                                        id: bn_l_thumb_mid01_015
                                                                        objectName: "bn_l_thumb_mid01_015"
                                                                        x: 0.0015016419347375631
                                                                        y: 0.016316676512360573
                                                                        z: -0.02854609675705433
                                                                        rotation: Qt.quaternion(1.45241e-16, 2.81304e-16, 0.590229, 0.807236)
                                                                        Node {
                                                                            id: bn_l_thumb_tip01_016
                                                                            objectName: "bn_l_thumb_tip01_016"
                                                                            x: -0.024463271722197533
                                                                            y: -0.025909168645739555
                                                                            z: -0.022066423669457436
                                                                            rotation: Qt.quaternion(1, -8.32667e-17, 1.65436e-24, 1.37753e-40)
                                                                        }
                                                                    }
                                                                }
                                                                Node {
                                                                    id: bn_l_weapon_017
                                                                    objectName: "bn_l_weapon_017"
                                                                    x: 0.04537564143538475
                                                                    y: -0.015202430076897144
                                                                    z: 0.09108875691890717
                                                                    rotation: Qt.quaternion(-0.0115065, 0.0115065, 0.707013, -0.707013)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                    Node {
                                                                        id: attachment_l_01_018
                                                                        objectName: "attachment_l_01_018"
                                                                        rotation: Qt.quaternion(1, -1.97215e-31, 0, -1.59522e-25)
                                                                    }
                                                                }
                                                                Node {
                                                                    id: fx_hand_l01_019
                                                                    objectName: "fx_hand_l01_019"
                                                                    x: -0.029999999329447746
                                                                    y: 1.734723475976807e-18
                                                                    z: 0.1599999964237213
                                                                    rotation: Qt.quaternion(6.51544e-17, -2.14412e-17, -0.707107, 0.707107)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: bn_neck01_020
                                                    objectName: "bn_neck01_020"
                                                    x: -9.851494117146475e-17
                                                    y: 0.4513891935348511
                                                    z: -0.022361066192388535
                                                    Node {
                                                        id: bn_head01_021
                                                        objectName: "bn_head01_021"
                                                        x: -1.0808848473569218e-16
                                                        y: 0.04911847040057182
                                                        z: -0.011574248783290386
                                                        rotation: Qt.quaternion(0.501096, -0.498902, 0.501096, -0.498902)
                                                        Node {
                                                            id: bn_head_attachment01_022
                                                            objectName: "bn_head_attachment01_022"
                                                            x: -0.03999999910593033
                                                            z: -7.703719777548943e-33
                                                            rotation: Qt.quaternion(1, 1.2326e-32, -1.01111e-32, 0)
                                                            Node {
                                                                id: attachment_head01_00
                                                                objectName: "attachment_head01_00"
                                                                rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
                                                            }
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: bn_nose01_023
                                                    objectName: "bn_nose01_023"
                                                    x: -9.851494117146475e-17
                                                    y: 0.3555012047290802
                                                    z: 0.002942884573712945
                                                    Node {
                                                        id: bn_cockpit01_024
                                                        objectName: "bn_cockpit01_024"
                                                        y: -0.08960500359535217
                                                        z: -0.08640319854021072
                                                    }
                                                    Node {
                                                        id: bn_frontwing01_025
                                                        objectName: "bn_frontwing01_025"
                                                        y: -0.330495685338974
                                                        z: -0.0804508849978447
                                                        Node {
                                                            id: bn_nosetip01_026
                                                            objectName: "bn_nosetip01_026"
                                                            y: -0.05675942450761795
                                                            z: 0.02521776780486107
                                                        }
                                                    }
                                                    Node {
                                                        id: bn_l_front_wheel01_027
                                                        objectName: "bn_l_front_wheel01_027"
                                                        x: 0.09989999234676361
                                                        y: 0.02308257296681404
                                                        z: -0.2381390780210495
                                                        rotation: Qt.quaternion(1, 0, 0, 4.16334e-16)
                                                    }
                                                    Node {
                                                        id: bn_r_front_wheel01_028
                                                        objectName: "bn_r_front_wheel01_028"
                                                        x: -0.0999002605676651
                                                        y: 0.02308257296681404
                                                        z: -0.2381390780210495
                                                        rotation: Qt.quaternion(1, 0, 0, -2.77556e-17)
                                                    }
                                                }
                                                Node {
                                                    id: bn_nose_part01_029
                                                    objectName: "bn_nose_part01_029"
                                                    x: -9.851494117146475e-17
                                                    y: 0.12705443799495697
                                                    z: -0.018331557512283325
                                                }
                                                Node {
                                                    id: bn_r_shoulder01_030
                                                    objectName: "bn_r_shoulder01_030"
                                                    x: -0.2392749935388565
                                                    y: 0.38069087266921997
                                                    z: -0.033935315907001495
                                                    Node {
                                                        id: bn_r_upperarm01_031
                                                        objectName: "bn_r_upperarm01_031"
                                                        x: -0.10740799456834793
                                                        y: 0.003869999898597598
                                                        z: 0.0082372622564435
                                                        rotation: Qt.quaternion(-0.0191763, -0.0191763, -0.706847, 0.706847)
                                                        scale.x: 1
                                                        scale.y: 1
                                                        scale.z: 1
                                                        Node {
                                                            id: bn_r_forearm01_032
                                                            objectName: "bn_r_forearm01_032"
                                                            x: 0.0008332675788551569
                                                            y: 0.015287106856703758
                                                            z: 0.2819567918777466
                                                            rotation: Qt.quaternion(-4.92441e-17, 0.999059, -0.0433824, 2.77407e-16)
                                                            Node {
                                                                id: bn_r_wrist01_033
                                                                objectName: "bn_r_wrist01_033"
                                                                x: 0.0002874209894798696
                                                                y: 0.008926074020564556
                                                                z: -0.2743001878261566
                                                                rotation: Qt.quaternion(1, 4.44089e-16, 4.96131e-16, 3.46945e-17)
                                                                Node {
                                                                    id: bn_r_fingers01_034
                                                                    objectName: "bn_r_fingers01_034"
                                                                    x: 0.0007788738585077226
                                                                    y: 0.023922553285956383
                                                                    z: -0.12778399884700775
                                                                    rotation: Qt.quaternion(0.526844, -0.438889, 0.554415, 0.471631)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                    Node {
                                                                        id: bn_r_fingers_mid01_035
                                                                        objectName: "bn_r_fingers_mid01_035"
                                                                        x: 0.05408240854740143
                                                                        y: 1.1102230246251565e-16
                                                                        z: 6.938893903907228e-17
                                                                        rotation: Qt.quaternion(0.95065, -0.0645378, 0.0249258, 0.302453)
                                                                        scale.x: 1
                                                                        scale.y: 1
                                                                        scale.z: 1
                                                                        Node {
                                                                            id: bn_r_fingers_tip01_036
                                                                            objectName: "bn_r_fingers_tip01_036"
                                                                            x: 0.04531705752015114
                                                                            y: -1.1102230246251565e-16
                                                                            z: -1.0408340855860843e-17
                                                                            rotation: Qt.quaternion(5.52135e-17, 0.901705, 0.432352, 2.64739e-17)
                                                                        }
                                                                    }
                                                                }
                                                                Node {
                                                                    id: bn_r_thumb01_037
                                                                    objectName: "bn_r_thumb01_037"
                                                                    x: 0.01381094753742218
                                                                    y: 0.07325040549039841
                                                                    z: -0.07206299901008606
                                                                    rotation: Qt.quaternion(-0.0115065, 0.0115065, 0.707013, -0.707013)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                    Node {
                                                                        id: bn_r_thumb_mid01_038
                                                                        objectName: "bn_r_thumb_mid01_038"
                                                                        x: 0.0015009999042376876
                                                                        y: 0.017059998586773872
                                                                        z: -0.028107699006795883
                                                                        rotation: Qt.quaternion(1, -6.245e-16, -5.55112e-17, -6.10623e-16)
                                                                        Node {
                                                                            id: bn_r_thumb_tip01_039
                                                                            objectName: "bn_r_thumb_tip01_039"
                                                                            x: 0.024463998153805733
                                                                            y: 0.03383199870586395
                                                                            z: -0.0036909999325871468
                                                                            rotation: Qt.quaternion(1, -1.97215e-31, 0, -2.84084e-31)
                                                                        }
                                                                    }
                                                                }
                                                                Node {
                                                                    id: bn_r_weapon_040
                                                                    objectName: "bn_r_weapon_040"
                                                                    x: -0.04538225382566452
                                                                    y: 0.015204758383333683
                                                                    z: -0.0910845473408699
                                                                    rotation: Qt.quaternion(0.0190996, 0.0190996, 0.706849, 0.706849)
                                                                    Node {
                                                                        id: attachment_r_01_041
                                                                        objectName: "attachment_r_01_041"
                                                                        rotation: Qt.quaternion(1, 0, 0, 1.67941e-31)
                                                                    }
                                                                }
                                                                Node {
                                                                    id: bn_r_weapon_melee01_042
                                                                    objectName: "bn_r_weapon_melee01_042"
                                                                    x: -0.029772358015179634
                                                                    y: 0.014696530066430569
                                                                    z: -0.0910845473408699
                                                                    rotation: Qt.quaternion(0.0115065, 0.0115065, 0.707013, 0.707013)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                    Node {
                                                                        id: attachment_r_02_043
                                                                        objectName: "attachment_r_02_043"
                                                                        rotation: Qt.quaternion(1, 0, 1.32349e-23, -1.72708e-31)
                                                                    }
                                                                }
                                                                Node {
                                                                    id: fx_hand_r01_044
                                                                    objectName: "fx_hand_r01_044"
                                                                    x: 0.029999999329447746
                                                                    z: -0.1599999964237213
                                                                    rotation: Qt.quaternion(2.93717e-17, 5.72239e-17, 0.707107, 0.707107)
                                                                    scale.x: 1
                                                                    scale.y: 1
                                                                    scale.z: 1
                                                                }
                                                            }
                                                        }
                                                        Node {
                                                            id: fx_damage03_045
                                                            objectName: "fx_damage03_045"
                                                            x: 0.0035615514498203993
                                                            y: 0.00805600918829441
                                                            z: -0.11559756100177765
                                                            rotation: Qt.quaternion(0.0191763, -0.0191763, -0.706847, 0.706847)
                                                            scale.x: 1
                                                            scale.y: 1
                                                            scale.z: 1
                                                        }
                                                    }
                                                }
                                                Node {
                                                    id: bn_chest_attachment01_05
                                                    objectName: "bn_chest_attachment01_05"
                                                    y: 0.3181999921798706
                                                    z: 0.16209998726844788
                                                    Node {
                                                        id: attachment_chest01_06
                                                        objectName: "attachment_chest01_06"
                                                    }
                                                }
                                                Node {
                                                    id: fx_damage01_046
                                                    objectName: "fx_damage01_046"
                                                    x: 0.19257982075214386
                                                    y: 0.18853230774402618
                                                    z: -0.27222660183906555
                                                }
                                                Node {
                                                    id: fx_impact01_047
                                                    objectName: "fx_impact01_047"
                                                    y: 0.1599999964237213
                                                    z: 0.12600000202655792
                                                }
                                            }
                                            Node {
                                                id: bn_l_thigh01_048
                                                objectName: "bn_l_thigh01_048"
                                                x: 0.1401434689760208
                                                y: -0.025453932583332062
                                                z: -0.007783004082739353
                                                rotation: Qt.quaternion(0.520393, 0.478739, -0.520393, -0.478739)
                                                scale.x: 1
                                                scale.y: 1
                                                scale.z: 1
                                                Node {
                                                    id: bn_l_knee01_049
                                                    objectName: "bn_l_knee01_049"
                                                    x: 0.44449383020401
                                                    y: -0.007251413073390722
                                                    z: 3.58046925441613e-15
                                                    rotation: Qt.quaternion(1.07703e-15, 0.992542, -0.121901, 8.26709e-15)
                                                    scale.x: 1
                                                    scale.y: 1
                                                    scale.z: 1
                                                    Node {
                                                        id: bn_l_back_wheel01_050
                                                        objectName: "bn_l_back_wheel01_050"
                                                        x: 0.4521268606185913
                                                        y: -0.02712058275938034
                                                        z: 0.13817261159420013
                                                        rotation: Qt.quaternion(0.538605, 0.458154, -0.538605, 0.458154)
                                                    }
                                                    Node {
                                                        id: bn_l_foot01_051
                                                        objectName: "bn_l_foot01_051"
                                                        x: 0.4927177429199219
                                                        y: -0.052825529128313065
                                                        z: 2.6645352591003757e-15
                                                        rotation: Qt.quaternion(1.69603e-17, -0.660984, 0.7504, -6.66603e-17)
                                                        Node {
                                                            id: bn_l_toe01_052
                                                            objectName: "bn_l_toe01_052"
                                                            x: 0.3092609941959381
                                                            y: -0.13468718528747559
                                                            z: -2.006993460312856e-09
                                                            rotation: Qt.quaternion(0.707001, -0.0122108, 0.707001, 0.0122108)
                                                            scale.x: 1
                                                            scale.y: 1
                                                            scale.z: 1
                                                        }
                                                        Node {
                                                            id: fx_foot_l01_053
                                                            objectName: "fx_foot_l01_053"
                                                            x: 0.07000000029802322
                                                            y: -0.14999999105930328
                                                            z: 0.019999999552965164
                                                            rotation: Qt.quaternion(0.707107, 6.62383e-17, 0.707107, -6.62383e-17)
                                                            scale.x: 1
                                                            scale.y: 1
                                                            scale.z: 1
                                                        }
                                                    }
                                                }
                                            }
                                            Node {
                                                id: bn_r_thigh01_054
                                                objectName: "bn_r_thigh01_054"
                                                x: -0.1401430070400238
                                                y: -0.025458695366978645
                                                z: -0.00778299430385232
                                                rotation: Qt.quaternion(0.47874, -0.520392, -0.478737, 0.520395)
                                                Node {
                                                    id: bn_r_knee01_055
                                                    objectName: "bn_r_knee01_055"
                                                    x: -0.44448888301849365
                                                    y: 0.007251009810715914
                                                    z: -1.3961054534661343e-14
                                                    rotation: Qt.quaternion(5.95032e-16, 0.992542, -0.121901, 4.34257e-15)
                                                    scale.x: 1
                                                    scale.y: 1
                                                    scale.z: 1
                                                    Node {
                                                        id: bn_r_back_wheel01_056
                                                        objectName: "bn_r_back_wheel01_056"
                                                        x: -0.4521271288394928
                                                        y: 0.027119748294353485
                                                        z: -0.1381772756576538
                                                        rotation: Qt.quaternion(-0.458155, 0.538606, 0.458152, 0.538603)
                                                    }
                                                    Node {
                                                        id: bn_r_foot01_057
                                                        objectName: "bn_r_foot01_057"
                                                        x: -0.49271783232688904
                                                        y: 0.05282558500766754
                                                        z: -4.1326322275381244e-07
                                                        rotation: Qt.quaternion(-2.31011e-06, -0.660984, 0.7504, -2.21229e-06)
                                                        Node {
                                                            id: bn_r_toe01_058
                                                            objectName: "bn_r_toe01_058"
                                                            x: -0.3092607855796814
                                                            y: 0.13468722999095917
                                                            z: -9.135689427175464e-10
                                                            rotation: Qt.quaternion(0.707001, -0.0122108, 0.707001, 0.0122108)
                                                            scale.x: 1
                                                            scale.y: 1
                                                            scale.z: 1
                                                        }
                                                        Node {
                                                            id: fx_foot_r01_059
                                                            objectName: "fx_foot_r01_059"
                                                            x: -0.07000000029802322
                                                            y: 0.14999999105930328
                                                            z: -0.019999999552965164
                                                            rotation: Qt.quaternion(-2.00307e-16, -0.707107, -2.00307e-16, 0.707107)
                                                            scale.x: 1
                                                            scale.y: 1
                                                            scale.z: 1
                                                        }
                                                    }
                                                }
                                            }
                                            Node {
                                                id: fx_damage02_060
                                                objectName: "fx_damage02_060"
                                                x: -0.08689151704311371
                                                y: -0.05978349596261978
                                                z: 0.1029202789068222
                                            }
                                            Node {
                                                id: fx_ground01_061
                                                objectName: "fx_ground01_061"
                                                x: 4.013115855649884e-20
                                                y: -1.1084187030792236
                                                z: -0.033599093556404114
                                            }
                                        }
                                    }
                                }
                                Model {
                                    id: object_8
                                    objectName: "Object_8"
                                    source: "meshes/mirage_1_Body_x0_Mirage_0_Body_0_mesh.mesh"
                                    skin: skin
                                    materials: [
                                        mirage_0_Body_material
                                    ]
                                }
                                Node {
                                    id: lod0
                                    objectName: "LOD0"
                                    Node {
                                        id: mirage_1_Body_x0
                                        objectName: "Mirage_1_Body_x0"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: transform_to_vehicle_hero_timeline
        objectName: "transform_to_vehicle_hero"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1834
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1834
            from: 0
            to: 1834
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "position"
            keyframeSource: "animations/bn_l_weapon_017_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "rotation"
            keyframeSource: "animations/bn_l_weapon_017_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "position"
            keyframeSource: "animations/bn_backwing01_04_position_0.qad"
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "rotation"
            keyframeSource: "animations/bn_backwing01_04_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "position"
            keyframeSource: "animations/bn_l_wrist01_010_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "rotation"
            keyframeSource: "animations/bn_l_wrist01_010_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "position"
            keyframeSource: "animations/bn_l_fingers_mid01_012_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers_mid01_012_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "position"
            keyframeSource: "animations/bn_chest_attachment01_05_position_0.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "rotation"
            keyframeSource: "animations/bn_chest_attachment01_05_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.000778872, -0.0239225, 0.127784)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers01_011_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00150164, 0.0163167, -0.0285461)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb_mid01_015_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0138112, -0.0732503, 0.0720627)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb01_014_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "position"
            keyframeSource: "animations/bn_l_forearm01_09_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "rotation"
            keyframeSource: "animations/bn_l_forearm01_09_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "position"
            keyframeSource: "animations/bn_l_upperarm01_08_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "rotation"
            keyframeSource: "animations/bn_l_upperarm01_08_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "position"
            keyframeSource: "animations/bn_head_attachment01_022_position_0.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "rotation"
            keyframeSource: "animations/bn_head_attachment01_022_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "position"
            keyframeSource: "animations/bn_head01_021_position_0.qad"
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "rotation"
            keyframeSource: "animations/bn_head01_021_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "position"
            keyframeSource: "animations/bn_neck01_020_position_0.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "rotation"
            keyframeSource: "animations/bn_neck01_020_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "position"
            keyframeSource: "animations/bn_cockpit01_024_position_0.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "rotation"
            keyframeSource: "animations/bn_cockpit01_024_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "position"
            keyframeSource: "animations/bn_nosetip01_026_position_0.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "rotation"
            keyframeSource: "animations/bn_nosetip01_026_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "position"
            keyframeSource: "animations/bn_frontwing01_025_position_0.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "rotation"
            keyframeSource: "animations/bn_frontwing01_025_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "position"
            keyframeSource: "animations/bn_l_front_wheel01_027_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "rotation"
            keyframeSource: "animations/bn_l_front_wheel01_027_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "position"
            keyframeSource: "animations/bn_r_front_wheel01_028_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "rotation"
            keyframeSource: "animations/bn_r_front_wheel01_028_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "position"
            keyframeSource: "animations/bn_nose01_023_position_0.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "rotation"
            keyframeSource: "animations/bn_nose01_023_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "position"
            keyframeSource: "animations/bn_nose_part01_029_position_0.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "rotation"
            keyframeSource: "animations/bn_nose_part01_029_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "position"
            keyframeSource: "animations/bn_r_fingers_mid01_035_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers_mid01_035_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.000778874, 0.0239226, -0.127784)
            }
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers01_034_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.001501, 0.01706, -0.0281077)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb_mid01_038_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0138109, 0.0732504, -0.072063)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb01_037_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "position"
            keyframeSource: "animations/bn_r_weapon_040_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_040_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "position"
            keyframeSource: "animations/bn_r_weapon_melee01_042_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_melee01_042_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "position"
            keyframeSource: "animations/bn_r_wrist01_033_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "rotation"
            keyframeSource: "animations/bn_r_wrist01_033_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "position"
            keyframeSource: "animations/bn_r_forearm01_032_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "rotation"
            keyframeSource: "animations/bn_r_forearm01_032_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "position"
            keyframeSource: "animations/bn_r_upperarm01_031_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "rotation"
            keyframeSource: "animations/bn_r_upperarm01_031_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "position"
            keyframeSource: "animations/bn_chest01_03_position_0.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "rotation"
            keyframeSource: "animations/bn_chest01_03_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "position"
            keyframeSource: "animations/bn_l_back_wheel01_050_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "rotation"
            keyframeSource: "animations/bn_l_back_wheel01_050_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "position"
            keyframeSource: "animations/bn_l_foot01_051_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "rotation"
            keyframeSource: "animations/bn_l_foot01_051_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "position"
            keyframeSource: "animations/bn_l_knee01_049_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "rotation"
            keyframeSource: "animations/bn_l_knee01_049_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "position"
            keyframeSource: "animations/bn_l_thigh01_048_position_0.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "rotation"
            keyframeSource: "animations/bn_l_thigh01_048_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "position"
            keyframeSource: "animations/bn_r_back_wheel01_056_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "rotation"
            keyframeSource: "animations/bn_r_back_wheel01_056_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "position"
            keyframeSource: "animations/bn_r_foot01_057_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "rotation"
            keyframeSource: "animations/bn_r_foot01_057_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "position"
            keyframeSource: "animations/bn_r_knee01_055_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "rotation"
            keyframeSource: "animations/bn_r_knee01_055_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "position"
            keyframeSource: "animations/bn_r_thigh01_054_position_0.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "rotation"
            keyframeSource: "animations/bn_r_thigh01_054_rotation_0.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "position"
            keyframeSource: "animations/fx_ground01_061_position_0.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "rotation"
            keyframeSource: "animations/fx_ground01_061_rotation_0.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "position"
            keyframeSource: "animations/bn_pelvis01_02_position_0.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "rotation"
            keyframeSource: "animations/bn_pelvis01_02_rotation_0.qad"
        }
    }
    Timeline {
        id: transform_to_robot_hero_timeline
        objectName: "transform_to_robot_hero"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 2367
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 2367
            from: 0
            to: 2367
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "position"
            keyframeSource: "animations/bn_l_weapon_017_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "rotation"
            keyframeSource: "animations/bn_l_weapon_017_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "position"
            keyframeSource: "animations/bn_backwing01_04_position_1.qad"
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "rotation"
            keyframeSource: "animations/bn_backwing01_04_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "position"
            keyframeSource: "animations/bn_l_wrist01_010_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "rotation"
            keyframeSource: "animations/bn_l_wrist01_010_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "position"
            keyframeSource: "animations/bn_l_fingers_mid01_012_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers_mid01_012_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "position"
            keyframeSource: "animations/bn_chest_attachment01_05_position_1.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "rotation"
            keyframeSource: "animations/bn_chest_attachment01_05_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.000778872, -0.0239225, 0.127784)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers01_011_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00150164, 0.0163167, -0.0285461)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb_mid01_015_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0138112, -0.0732503, 0.0720627)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb01_014_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "position"
            keyframeSource: "animations/bn_l_forearm01_09_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "rotation"
            keyframeSource: "animations/bn_l_forearm01_09_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "position"
            keyframeSource: "animations/bn_l_upperarm01_08_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "rotation"
            keyframeSource: "animations/bn_l_upperarm01_08_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "position"
            keyframeSource: "animations/bn_head_attachment01_022_position_1.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "rotation"
            keyframeSource: "animations/bn_head_attachment01_022_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "position"
            keyframeSource: "animations/bn_head01_021_position_1.qad"
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "rotation"
            keyframeSource: "animations/bn_head01_021_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "position"
            keyframeSource: "animations/bn_neck01_020_position_1.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "rotation"
            keyframeSource: "animations/bn_neck01_020_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "position"
            keyframeSource: "animations/bn_cockpit01_024_position_1.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "rotation"
            keyframeSource: "animations/bn_cockpit01_024_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "position"
            keyframeSource: "animations/bn_nosetip01_026_position_1.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "rotation"
            keyframeSource: "animations/bn_nosetip01_026_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "position"
            keyframeSource: "animations/bn_frontwing01_025_position_1.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "rotation"
            keyframeSource: "animations/bn_frontwing01_025_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "position"
            keyframeSource: "animations/bn_l_front_wheel01_027_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "rotation"
            keyframeSource: "animations/bn_l_front_wheel01_027_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "position"
            keyframeSource: "animations/bn_r_front_wheel01_028_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "rotation"
            keyframeSource: "animations/bn_r_front_wheel01_028_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "position"
            keyframeSource: "animations/bn_nose01_023_position_1.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "rotation"
            keyframeSource: "animations/bn_nose01_023_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "position"
            keyframeSource: "animations/bn_nose_part01_029_position_1.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "rotation"
            keyframeSource: "animations/bn_nose_part01_029_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "position"
            keyframeSource: "animations/bn_r_fingers_mid01_035_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers_mid01_035_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.000778874, 0.0239226, -0.127784)
            }
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers01_034_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.001501, 0.01706, -0.0281077)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb_mid01_038_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0138109, 0.0732504, -0.072063)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb01_037_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "position"
            keyframeSource: "animations/bn_r_weapon_040_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_040_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "position"
            keyframeSource: "animations/bn_r_weapon_melee01_042_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_melee01_042_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "position"
            keyframeSource: "animations/bn_r_wrist01_033_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "rotation"
            keyframeSource: "animations/bn_r_wrist01_033_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "position"
            keyframeSource: "animations/bn_r_forearm01_032_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "rotation"
            keyframeSource: "animations/bn_r_forearm01_032_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "position"
            keyframeSource: "animations/bn_r_upperarm01_031_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "rotation"
            keyframeSource: "animations/bn_r_upperarm01_031_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "position"
            keyframeSource: "animations/bn_chest01_03_position_1.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "rotation"
            keyframeSource: "animations/bn_chest01_03_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.437476, -0.0134936, 0.170482)
            }
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "rotation"
            keyframeSource: "animations/bn_l_back_wheel01_050_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "position"
            keyframeSource: "animations/bn_l_foot01_051_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "rotation"
            keyframeSource: "animations/bn_l_foot01_051_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "position"
            keyframeSource: "animations/bn_l_knee01_049_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "rotation"
            keyframeSource: "animations/bn_l_knee01_049_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "position"
            keyframeSource: "animations/bn_l_thigh01_048_position_1.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "rotation"
            keyframeSource: "animations/bn_l_thigh01_048_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "position"
            keyframeSource: "animations/bn_r_back_wheel01_056_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "rotation"
            keyframeSource: "animations/bn_r_back_wheel01_056_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "position"
            keyframeSource: "animations/bn_r_foot01_057_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "rotation"
            keyframeSource: "animations/bn_r_foot01_057_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "position"
            keyframeSource: "animations/bn_r_knee01_055_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "rotation"
            keyframeSource: "animations/bn_r_knee01_055_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "position"
            keyframeSource: "animations/bn_r_thigh01_054_position_1.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "rotation"
            keyframeSource: "animations/bn_r_thigh01_054_rotation_1.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "position"
            keyframeSource: "animations/fx_ground01_061_position_1.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "rotation"
            keyframeSource: "animations/fx_ground01_061_rotation_1.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "position"
            keyframeSource: "animations/bn_pelvis01_02_position_1.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "rotation"
            keyframeSource: "animations/bn_pelvis01_02_rotation_1.qad"
        }
    }
    Timeline {
        id: transform_to_vehicle_timeline
        objectName: "transform_to_vehicle"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1001
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1001
            from: 0
            to: 1001
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "position"
            keyframeSource: "animations/bn_l_weapon_017_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "rotation"
            keyframeSource: "animations/bn_l_weapon_017_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "position"
            keyframeSource: "animations/bn_backwing01_04_position_2.qad"
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "rotation"
            keyframeSource: "animations/bn_backwing01_04_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "position"
            keyframeSource: "animations/bn_l_wrist01_010_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "rotation"
            keyframeSource: "animations/bn_l_wrist01_010_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "position"
            keyframeSource: "animations/bn_l_fingers_mid01_012_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers_mid01_012_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "position"
            keyframeSource: "animations/bn_chest_attachment01_05_position_2.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "rotation"
            keyframeSource: "animations/bn_chest_attachment01_05_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.000778872, -0.0239225, 0.127784)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers01_011_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00150164, 0.0163167, -0.0285461)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb_mid01_015_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0138112, -0.0732503, 0.0720627)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb01_014_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "position"
            keyframeSource: "animations/bn_l_forearm01_09_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "rotation"
            keyframeSource: "animations/bn_l_forearm01_09_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "position"
            keyframeSource: "animations/bn_l_upperarm01_08_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "rotation"
            keyframeSource: "animations/bn_l_upperarm01_08_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "position"
            keyframeSource: "animations/bn_head_attachment01_022_position_2.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "rotation"
            keyframeSource: "animations/bn_head_attachment01_022_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "position"
            keyframeSource: "animations/bn_head01_021_position_2.qad"
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "rotation"
            keyframeSource: "animations/bn_head01_021_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "position"
            keyframeSource: "animations/bn_neck01_020_position_2.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "rotation"
            keyframeSource: "animations/bn_neck01_020_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "position"
            keyframeSource: "animations/bn_cockpit01_024_position_2.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "rotation"
            keyframeSource: "animations/bn_cockpit01_024_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "position"
            keyframeSource: "animations/bn_nosetip01_026_position_2.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "rotation"
            keyframeSource: "animations/bn_nosetip01_026_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "position"
            keyframeSource: "animations/bn_frontwing01_025_position_2.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "rotation"
            keyframeSource: "animations/bn_frontwing01_025_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "position"
            keyframeSource: "animations/bn_l_front_wheel01_027_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "rotation"
            keyframeSource: "animations/bn_l_front_wheel01_027_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "position"
            keyframeSource: "animations/bn_r_front_wheel01_028_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "rotation"
            keyframeSource: "animations/bn_r_front_wheel01_028_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "position"
            keyframeSource: "animations/bn_nose01_023_position_2.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "rotation"
            keyframeSource: "animations/bn_nose01_023_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "position"
            keyframeSource: "animations/bn_nose_part01_029_position_2.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "rotation"
            keyframeSource: "animations/bn_nose_part01_029_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "position"
            keyframeSource: "animations/bn_r_fingers_mid01_035_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers_mid01_035_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.000778874, 0.0239226, -0.127784)
            }
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers01_034_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.001501, 0.01706, -0.0281077)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb_mid01_038_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0138109, 0.0732504, -0.072063)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb01_037_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "position"
            keyframeSource: "animations/bn_r_weapon_040_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_040_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "position"
            keyframeSource: "animations/bn_r_weapon_melee01_042_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_melee01_042_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "position"
            keyframeSource: "animations/bn_r_wrist01_033_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "rotation"
            keyframeSource: "animations/bn_r_wrist01_033_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "position"
            keyframeSource: "animations/bn_r_forearm01_032_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "rotation"
            keyframeSource: "animations/bn_r_forearm01_032_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "position"
            keyframeSource: "animations/bn_r_upperarm01_031_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "rotation"
            keyframeSource: "animations/bn_r_upperarm01_031_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "position"
            keyframeSource: "animations/bn_chest01_03_position_2.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "rotation"
            keyframeSource: "animations/bn_chest01_03_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "position"
            keyframeSource: "animations/bn_l_back_wheel01_050_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "rotation"
            keyframeSource: "animations/bn_l_back_wheel01_050_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "position"
            keyframeSource: "animations/bn_l_foot01_051_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "rotation"
            keyframeSource: "animations/bn_l_foot01_051_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "position"
            keyframeSource: "animations/bn_l_knee01_049_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "rotation"
            keyframeSource: "animations/bn_l_knee01_049_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "position"
            keyframeSource: "animations/bn_l_thigh01_048_position_2.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "rotation"
            keyframeSource: "animations/bn_l_thigh01_048_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "position"
            keyframeSource: "animations/bn_r_back_wheel01_056_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "rotation"
            keyframeSource: "animations/bn_r_back_wheel01_056_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "position"
            keyframeSource: "animations/bn_r_foot01_057_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "rotation"
            keyframeSource: "animations/bn_r_foot01_057_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "position"
            keyframeSource: "animations/bn_r_knee01_055_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "rotation"
            keyframeSource: "animations/bn_r_knee01_055_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "position"
            keyframeSource: "animations/bn_r_thigh01_054_position_2.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "rotation"
            keyframeSource: "animations/bn_r_thigh01_054_rotation_2.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "position"
            keyframeSource: "animations/fx_ground01_061_position_2.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "rotation"
            keyframeSource: "animations/fx_ground01_061_rotation_2.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "position"
            keyframeSource: "animations/bn_pelvis01_02_position_2.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "rotation"
            keyframeSource: "animations/bn_pelvis01_02_rotation_2.qad"
        }
    }
    Timeline {
        id: transform_to_robot_timeline
        objectName: "transform_to_robot"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1001
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1001
            from: 0
            to: 1001
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "position"
            keyframeSource: "animations/bn_l_weapon_017_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "rotation"
            keyframeSource: "animations/bn_l_weapon_017_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_weapon_017
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "position"
            keyframeSource: "animations/bn_backwing01_04_position_3.qad"
        }
        KeyframeGroup {
            target: bn_backwing01_04
            property: "rotation"
            keyframeSource: "animations/bn_backwing01_04_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "position"
            keyframeSource: "animations/bn_l_wrist01_010_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_wrist01_010
            property: "rotation"
            keyframeSource: "animations/bn_l_wrist01_010_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "position"
            keyframeSource: "animations/bn_l_fingers_mid01_012_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_fingers_mid01_012
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers_mid01_012_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "position"
            keyframeSource: "animations/bn_chest_attachment01_05_position_3.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "rotation"
            keyframeSource: "animations/bn_chest_attachment01_05_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_chest_attachment01_05
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.000778872, -0.0239225, 0.127784)
            }
        }
        KeyframeGroup {
            target: bn_l_fingers01_011
            property: "rotation"
            keyframeSource: "animations/bn_l_fingers01_011_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.00150164, 0.0163167, -0.0285461)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb_mid01_015
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb_mid01_015_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.0138112, -0.0732503, 0.0720627)
            }
        }
        KeyframeGroup {
            target: bn_l_thumb01_014
            property: "rotation"
            keyframeSource: "animations/bn_l_thumb01_014_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "position"
            keyframeSource: "animations/bn_l_forearm01_09_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_forearm01_09
            property: "rotation"
            keyframeSource: "animations/bn_l_forearm01_09_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "position"
            keyframeSource: "animations/bn_l_upperarm01_08_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_upperarm01_08
            property: "rotation"
            keyframeSource: "animations/bn_l_upperarm01_08_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "position"
            keyframeSource: "animations/bn_head_attachment01_022_position_3.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "rotation"
            keyframeSource: "animations/bn_head_attachment01_022_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_head_attachment01_022
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "position"
            keyframeSource: "animations/bn_head01_021_position_3.qad"
        }
        KeyframeGroup {
            target: bn_head01_021
            property: "rotation"
            keyframeSource: "animations/bn_head01_021_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "position"
            keyframeSource: "animations/bn_neck01_020_position_3.qad"
        }
        KeyframeGroup {
            target: bn_neck01_020
            property: "rotation"
            keyframeSource: "animations/bn_neck01_020_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "position"
            keyframeSource: "animations/bn_cockpit01_024_position_3.qad"
        }
        KeyframeGroup {
            target: bn_cockpit01_024
            property: "rotation"
            keyframeSource: "animations/bn_cockpit01_024_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "position"
            keyframeSource: "animations/bn_nosetip01_026_position_3.qad"
        }
        KeyframeGroup {
            target: bn_nosetip01_026
            property: "rotation"
            keyframeSource: "animations/bn_nosetip01_026_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "position"
            keyframeSource: "animations/bn_frontwing01_025_position_3.qad"
        }
        KeyframeGroup {
            target: bn_frontwing01_025
            property: "rotation"
            keyframeSource: "animations/bn_frontwing01_025_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "position"
            keyframeSource: "animations/bn_l_front_wheel01_027_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_front_wheel01_027
            property: "rotation"
            keyframeSource: "animations/bn_l_front_wheel01_027_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "position"
            keyframeSource: "animations/bn_r_front_wheel01_028_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_front_wheel01_028
            property: "rotation"
            keyframeSource: "animations/bn_r_front_wheel01_028_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "position"
            keyframeSource: "animations/bn_nose01_023_position_3.qad"
        }
        KeyframeGroup {
            target: bn_nose01_023
            property: "rotation"
            keyframeSource: "animations/bn_nose01_023_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "position"
            keyframeSource: "animations/bn_nose_part01_029_position_3.qad"
        }
        KeyframeGroup {
            target: bn_nose_part01_029
            property: "rotation"
            keyframeSource: "animations/bn_nose_part01_029_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "position"
            keyframeSource: "animations/bn_r_fingers_mid01_035_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers_mid01_035
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers_mid01_035_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.000778874, 0.0239226, -0.127784)
            }
        }
        KeyframeGroup {
            target: bn_r_fingers01_034
            property: "rotation"
            keyframeSource: "animations/bn_r_fingers01_034_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.001501, 0.01706, -0.0281077)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb_mid01_038
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb_mid01_038_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.0138109, 0.0732504, -0.072063)
            }
        }
        KeyframeGroup {
            target: bn_r_thumb01_037
            property: "rotation"
            keyframeSource: "animations/bn_r_thumb01_037_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "position"
            keyframeSource: "animations/bn_r_weapon_040_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_040_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_040
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "position"
            keyframeSource: "animations/bn_r_weapon_melee01_042_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "rotation"
            keyframeSource: "animations/bn_r_weapon_melee01_042_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_weapon_melee01_042
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.01, 0.01, 0.01)
            }
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "position"
            keyframeSource: "animations/bn_r_wrist01_033_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_wrist01_033
            property: "rotation"
            keyframeSource: "animations/bn_r_wrist01_033_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "position"
            keyframeSource: "animations/bn_r_forearm01_032_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_forearm01_032
            property: "rotation"
            keyframeSource: "animations/bn_r_forearm01_032_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "position"
            keyframeSource: "animations/bn_r_upperarm01_031_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_upperarm01_031
            property: "rotation"
            keyframeSource: "animations/bn_r_upperarm01_031_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "position"
            keyframeSource: "animations/bn_chest01_03_position_3.qad"
        }
        KeyframeGroup {
            target: bn_chest01_03
            property: "rotation"
            keyframeSource: "animations/bn_chest01_03_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.437476, -0.0134936, 0.170482)
            }
        }
        KeyframeGroup {
            target: bn_l_back_wheel01_050
            property: "rotation"
            keyframeSource: "animations/bn_l_back_wheel01_050_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "position"
            keyframeSource: "animations/bn_l_foot01_051_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_foot01_051
            property: "rotation"
            keyframeSource: "animations/bn_l_foot01_051_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "position"
            keyframeSource: "animations/bn_l_knee01_049_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_knee01_049
            property: "rotation"
            keyframeSource: "animations/bn_l_knee01_049_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "position"
            keyframeSource: "animations/bn_l_thigh01_048_position_3.qad"
        }
        KeyframeGroup {
            target: bn_l_thigh01_048
            property: "rotation"
            keyframeSource: "animations/bn_l_thigh01_048_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.437477, 0.0134925, -0.168081)
            }
        }
        KeyframeGroup {
            target: bn_r_back_wheel01_056
            property: "rotation"
            keyframeSource: "animations/bn_r_back_wheel01_056_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "position"
            keyframeSource: "animations/bn_r_foot01_057_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_foot01_057
            property: "rotation"
            keyframeSource: "animations/bn_r_foot01_057_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "position"
            keyframeSource: "animations/bn_r_knee01_055_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_knee01_055
            property: "rotation"
            keyframeSource: "animations/bn_r_knee01_055_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "position"
            keyframeSource: "animations/bn_r_thigh01_054_position_3.qad"
        }
        KeyframeGroup {
            target: bn_r_thigh01_054
            property: "rotation"
            keyframeSource: "animations/bn_r_thigh01_054_rotation_3.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "position"
            keyframeSource: "animations/fx_ground01_061_position_3.qad"
        }
        KeyframeGroup {
            target: fx_ground01_061
            property: "rotation"
            keyframeSource: "animations/fx_ground01_061_rotation_3.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "position"
            keyframeSource: "animations/bn_pelvis01_02_position_3.qad"
        }
        KeyframeGroup {
            target: bn_pelvis01_02
            property: "rotation"
            keyframeSource: "animations/bn_pelvis01_02_rotation_3.qad"
        }
    }
}
