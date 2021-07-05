#ColorSliderQuiz
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.

import UIKit

class ViewController: UIViewController {
    //UIView
    @IBOutlet weak var colorView: UIView!
    //UISwitch
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    //UISlider
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    //UIButton
    @IBOutlet weak var resetButton: UIButton!
    
    func updateColor() {
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if !redSwitch.isOn{
            redSlider.value = 0
        }
        
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if !greenSwitch.isOn{
            greenSlider.value = 0
        }
        
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        if !blueSwitch.isOn{
            blueSlider.value = 0
        }
        
        let color = UIColor (red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    }
   //switchChange
    @IBAction func switchChange(_ sender: UISwitch) {
        updateColor()
    }
    //sliderValue
    @IBAction func redSliderValue(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func greenSliderValue(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func blueSliderValue(_ sender: UISlider) {
        updateColor()
    }
    //resetButton
    @IBAction func resetButton(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        updateColor()
    }
}
