//
//  ViewController.swift
//  TrafficLights
//
//  Created by Harmanjot Kaur on 27/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToRed(unwindSegue:UIStoryboardSegue){
        print("I am back here in red")
    }
}

