import QtQuick 2.0

Item {

    function retrieveMessages(id) {
        switch (id) {
            case "1": return uid1
            case "2": return uid2
            case "3": return uid3
        }
    }

    ListModel {
        id: uid1

        ListElement {
            sender: "1"
            dateTime: "2021-08-03 9:00:00"
            message: "Hi dude"
        }
        ListElement {
            sender: "1"
            dateTime: "2021-08-03 9:00:10"
            message: "How are you?"
        }
        ListElement {
            dateTime: "2021-08-03 9:01:30"
            message: "All good"
        }
    }

    ListModel {
        id: uid2
    }

    ListModel {
        id: uid3
    }
}
