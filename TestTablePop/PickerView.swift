//
//  LanguagePickerView.swift
//  PrankDial
//
//  Created by Hasan Rafi on 6/3/16.
//  Copyright © 2016 KickBackApps. All rights reserved.
//

import UIKit
import Foundation
import Popover

class PickerView: NSObject {
    var tableView: UITableView!
    var popover: Popover = Popover()
    
    var items: [String] = ["Viper", "X", "Games"]
    
    init(tableFrame: CGRect) {
        tableView = UITableView(frame: tableFrame)
    }
    
    func show(fromView: UIView, inView: UIView) {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        popover.show(tableView, fromView: fromView, inView: inView)
    }
}

extension PickerView: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DefaultCell")! as UITableViewCell
                
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
}

extension PickerView: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}