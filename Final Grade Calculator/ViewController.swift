//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by Laviolette, Akivah - Student on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentGradeTextField: UITextField!
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    
    @IBOutlet weak var finalWorthTextField: UITextField!
    
    @IBAction func gradeNeededButton(_ sender: Any) {
       let currentGrade = Double(currentGradeTextField.text!)
        
        let desiredGrade = Double(desiredGradeTextField.text!)
        
        let finalWorthPercentage = Double(finalWorthTextField.text!)
        
        let oneHundredPercent = 100.0
        
        let percentageOfGrade = Double(oneHundredPercent - finalWorthPercentage!)/100.0
        
        let gradeNeededOnFinal = (desiredGrade! - (percentageOfGrade * currentGrade!))/finalWorthPercentage!
        
        gradeNeededLabel.text = "You Need \(gradeNeededOnFinal * 100.0)%"
        
    }
    
    @IBOutlet weak var gradeNeededLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

