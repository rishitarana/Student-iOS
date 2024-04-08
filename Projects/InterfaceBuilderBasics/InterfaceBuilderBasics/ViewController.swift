//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemOrange
    }

    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text="This app rocks!"
    }
}

