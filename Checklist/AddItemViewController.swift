//
//  AddItemViewController.swift
//  Checklist
//
//  Created by Amby on 19/02/2023.
//

import UIKit

class AddItemViewController: UITableViewController {



    override func viewDidLoad() {
        navigationItem.largeTitleDisplayMode = .never
        super.viewDidLoad()

    }

    // MARK: - Actions
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }



}
