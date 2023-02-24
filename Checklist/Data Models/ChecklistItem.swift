//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Amby on 19/02/2023.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = true

    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1

    override init() {
        super.init()
        itemID = DataModel.nextChecklistItemID()
    }

    func scheduleNotification() {
        if shouldRemind && dueDate > Date() {
            print("we should schedule a notification")
        }
    }
}
