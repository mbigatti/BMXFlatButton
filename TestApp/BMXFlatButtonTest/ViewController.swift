//
//  ViewController.swift
//  BMXFlatButtonTest
//
//  Created by Massimiliano Bigatti on 05/07/14.
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import UIKit
import BMXFlatButton

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        // add button by code
        //
        let x = self.view.bounds.size.width / 2 - 100 / 2
        let button = FlatButton(frame: CGRectMake(x, 300, 100, 50))
        
        button.setTitle("TEST", forState: .Normal)
        button.normalColor = UIColor.orangeColor()
        button.cornerRadius = 4
        button.borderWidth = 2
        button.borderColor = UIColor.brownColor()
        button.titleLabel!.font = UIFont.boldSystemFontOfSize(12)
        
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

