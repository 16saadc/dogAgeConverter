//
//  ViewController.swift
//  DogAgeConverter
//
//  Created by 16saadc on 2/24/15.
//  Copyright (c) 2015 ChrisSaad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInDogYearsLabel: UILabel!
    
    @IBOutlet weak var ageInHumanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let ageFromTextField = ageInHumanYearsTextField.text.toInt()!
        
        let conversionConstant = 7
        
        ageInDogYearsLabel.text = "\(ageFromTextField * conversionConstant)" + " In Dog Years"
        
        ageInDogYearsLabel.hidden = false
        
        ageInHumanYearsTextField.resignFirstResponder()
    }
  
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = ageInHumanYearsTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
            var realDogYears:Double
        
        if optionalDoubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        ageInDogYearsLabel.text = "\(realDogYears)" + " In Real Dog Years"
        ageInDogYearsLabel.hidden = false
        
        ageInHumanYearsTextField.resignFirstResponder()
    }
    
    
}

