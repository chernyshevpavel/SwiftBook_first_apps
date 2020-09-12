//
//  ViewController.swift
//  TConverter
//
//  Created by Павел Чернышев on 11.09.2020.
//  Copyright © 2020 Павел Чернышев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 50
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slider.value)) - 50
        cLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((Double(temperatureCelsius) * 9 / 5) + 32))
        fLabel.text = "\(fahrenheitTemperature)ºF"
    }
}

