//
//  ViewController.swift
//  trafficLightApp
//
//  Created by Anton Boev on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightButton.layer.cornerRadius = 10
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
    }
    
    override func viewDidLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        greenTrafficLight.layer.cornerRadius =  greenTrafficLight.frame.height / 2
    }
    
    @IBAction func trafficLightButtonDidTapped() {
        if trafficLightButton.currentTitle == "START" {
            redTrafficLight.alpha = 1
            trafficLightButton.setTitle("NEXT", for: .normal)
        } else if redTrafficLight.alpha == 1 {
            redTrafficLight.alpha = 0.3
            yellowTrafficLight.alpha = 1
        } else if yellowTrafficLight.alpha == 1 {
            yellowTrafficLight.alpha = 0.3
            greenTrafficLight.alpha = 1
        } else {
            greenTrafficLight.alpha = 0.3
            redTrafficLight.alpha = 1
        }
    }
}


