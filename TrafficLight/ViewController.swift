//
//  ViewController.swift
//  TrafficLight
//
//  Created by Tatevik Khunoyan on 22.07.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private let radiusForCircle = CGFloat(60)
    private let lightOff = CGFloat(0.3)
    private let lightON = CGFloat(1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = radiusForCircle
        greenLightView.layer.cornerRadius = radiusForCircle
        yellowLightView.layer.cornerRadius = radiusForCircle
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }

    @IBAction func changeTheLightWhenPressed(_ sender: UIButton) {
        
        sender.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == lightON {
            yellowLightView.alpha = lightON
            redLightView.alpha = lightOff
            
        } else if yellowLightView.alpha == lightON {
            greenLightView.alpha = lightON
            yellowLightView.alpha = lightOff
            
        } else {
            redLightView.alpha = lightON
            greenLightView.alpha = lightOff
        }
    }
}

