//
//  ViewController.swift
//  HideStaticCells
//
//  Created by ProgrammingWithSwift on 2019/12/15.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var tappedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let selectedIndexPath = self.tappedIndexPath,
        indexPath.row == selectedIndexPath.row {
            return 0
        }
        
        return tableView.rowHeight
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tappedIndexPath = indexPath
        self.tableView.reloadData()
    }
}

