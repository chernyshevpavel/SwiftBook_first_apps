//
//  ViewController.swift
//  Hello world
//
//  Created by Павел Чернышев on 07.09.2020.
//  Copyright © 2020 Павел Чернышев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = "hello label";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

