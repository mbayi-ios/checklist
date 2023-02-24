//
//  Checklist.swift
//  Checklist
//
//  Created by Amby on 20/02/2023.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var iconName = "no icon"
    var items = [ChecklistItem]()

    init(name: String, iconName: String = "no icon") {
        self.name = name
        self.iconName = iconName
        super.init()
    }

    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
