//
//  ViewController.swift
//  PassDataProject
//
//  Created by Павел Чернышев on 13.09.2020.
//  Copyright © 2020 Павел Чернышев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else {
            return
        }
        guard let sourceVC = segue.source as? SecondViewController else {return}
        resultLabel.text = sourceVC.label.text
    }
     
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? SecondViewController else {return}
        destinationVC.login = loginTF.text
    }
}

