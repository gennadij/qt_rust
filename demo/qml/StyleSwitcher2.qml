/*
 *   Copyright 2017  Jos van den Oever <jos@vandenoever.info>
 *
 *   This program is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU General Public License as
 *   published by the Free Software Foundation; either version 2 of
 *   the License or (at your option) version 3 or any later version
 *   accepted by the membership of KDE e.V. (or its successor approved
 *   by the membership of KDE e.V.), which shall act as a proxy
 *   defined in Section 14 of version 3 of the license.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.6
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

RowLayout {
    Image {
        sourceSize.height: 2 * box.height
        fillMode: Image.PreserveAspectFit
        source: "../rust_qt_binding_generator.svg"
    }
    ComboBox {
        id: box
        Layout.fillWidth: true
        currentIndex: qtquickIndex
        model: styles
        textRole: "display"
        onActivated: {
            if (index !== qtquickIndex) {
                widgets.currentIndex = index
                application.close()
            }
        }
    }
}
