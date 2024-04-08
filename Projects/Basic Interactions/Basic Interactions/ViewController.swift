//
//  ViewController.swift
//  Basic Interactions
//
//  Created by student on 22/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text=textfield.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text=""
        textfield.text=""
    }
}

