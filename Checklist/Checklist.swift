//
//  Checklist.swift
//  Checklist
//
//  Created by Amby on 20/02/2023.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()

    init(name: String) {
        self.name = name
        super.init()
    }
}
