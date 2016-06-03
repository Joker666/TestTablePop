//
//  ViewController.swift
//  TestTablePop
//
//  Created by Hasan Rafi on 6/3/16.
//  Copyright © 2016 KickBackApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonTapped(sender: UIButton) {
        let menu = PickerView(tableFrame: CGRectMake(0, 0, 200, 180))
        menu.show(sender, inView: UIApplication.sharedApplication().keyWindow!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

