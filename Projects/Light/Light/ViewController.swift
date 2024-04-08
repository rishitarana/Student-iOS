//
//  ViewController.swift
//  Light
//
//  Created by student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
//    @IBOutlet weak var lightButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

//    fileprivate func updateUI() {
//        if lightOn{
//            view.backgroundColor = .white
////            lightButton.setTitle("Off", for: .normal)
//        }
//        else{
//            view.backgroundColor = .black
////            lightButton.setTitle("On", for: .normal)
//        }
//    }
    
    fileprivate func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

