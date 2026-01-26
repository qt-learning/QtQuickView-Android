# Qt Quick View for Android Academy

> Copyright (C) 2026 Qt Group.
> SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

This is a Qt Quick 3D Android learning project demonstrating how to create a Qt Design Studio project with 3D content and deploy it to Android devices. The project includes a robotic character model and interactive UI elements showcasing Qt Quick 3D capabilities on mobile platforms.

## Project Structure

- **Robo/**: Main Qt Quick application with 3D content
  - **App/**: Application entry point
  - **RoboContent/**: QML UI components and screens
  - **Generated/**: Qt Design Studio generated 3D scene files
  - **Dependencies/**: Qt Design Studio component libraries
- **BaseRobo/**: Android project files for deployment

## Documentation

This project serves as educational content for the Qt Quick for Android Academy. It demonstrates:
- Creating Qt Quick 3D projects in Qt Design Studio
- Importing and working with 3D models
- Building and deploying Qt Quick applications to Android
- Integrating Qt Quick 3D content with Android projects

## Building

### Prerequisites

- Qt 6.x with Qt Quick 3D modules
- Android SDK and NDK
- LLVM MinGW or MinGW64 (MSVC is not supported for Android builds)
- CMake 3.16 or later

### Build Instructions

1. Configure the project:
   ```bash
   mkdir build
   cd build
   cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
   cmake --build .
   ```

2. For Android deployment, use the Android project in `BaseRobo/` directory

## Terms and Conditions

If you, your employer, or the legal entity you act on behalf of hold commercial license(s) with a Qt Group entity, this software package constitutes Pre-Release Code under the Qt License/Frame Agreement governing those licenses, and that agreement's terms and conditions govern your access and use of this software package.

This software package may provide links or access to third party libraries or code (collectively "Third-Party Software") to implement various functions. Use or distribution of Third-Party Software is discretionary and in all respects subject to applicable license terms of applicable third-party right holders.

## Third-Party Components

### Qt Design Studio Components

The `Robo/Dependencies/Components/` directory contains Qt Design Studio component libraries:

> Copyright (C) 2018-2024 The Qt Company Ltd.
> Licensed under GPL v3 or commercial Qt licenses

These components are provided by The Qt Company and are subject to their own licensing terms.

### 3D Model Assets

The robotic character model in `downloaded_gltf_file/` and `Robo/RoboContent/3d/` may have separate licensing terms. Please refer to the original source for licensing information.

## License

This project is licensed under either:
- **LicenseRef-Qt-Commercial**: Commercial Qt license holders may use this code under their commercial license terms
- **GPL-3.0-only**: Open source users must comply with GNU General Public License v3.0

### GNU General Public License v3.0

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License only.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
