//
//  ViewController.swift
//  Checklist
//
//  Created by Amby on 17/02/2023.
//

import UIKit

class ChecklistViewController: UITableViewController {
    var row0item = ChecklistItem()
    var row1item = ChecklistItem()
    var row2item = ChecklistItem()
    var row3item = ChecklistItem()
    var row4item = ChecklistItem()
    var row5item = ChecklistItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        row0item.text = "Walk the dog"
        row0item.checked = true

        row1item.text = "Brush my teeth"
        row1item.checked = false

        row2item.text = "Learn iOS development"
        row2item.checked = false

        row3item.text = "Soccer practice"
        row3item.checked = false

        row4item.text = "Eat Ice cream"
        row4item.checked = true
    }

    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 5
    }

    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        var isChecked = false

        if indexPath.row == 0 {
            isChecked = row0item.checked
        } else if indexPath.row == 1  {
            isChecked = row1item.checked
        } else if indexPath.row == 2 {
            isChecked = row2item.checked
        } else if indexPath.row == 3 {
            isChecked = row3item.checked
        } else if indexPath.row == 4 {
            isChecked = row4item.checked
        }


        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)

        let label = cell.viewWithTag(1000) as! UILabel

        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }

        configureCheckmark(for: cell, at: indexPath)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {

            if indexPath.row == 0 {
                row0item.checked.toggle()
            } else if indexPath.row == 1 {
                row1item.checked.toggle()
            } else if indexPath.row == 2 {
                row2item.checked.toggle()
            } else if indexPath.row == 3 {
                row3item.checked.toggle()
            } else if indexPath.row == 4 {
                row4item.checked.toggle()
            }

            configureCheckmark(for: cell, at: indexPath)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

