//
//  ViewController.swift
//  IntroductionPrework
//
//  Created by Thomas Bui on 1/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var AcademicYearSegment: UISegmentedControl!
    
    @IBOutlet weak var PetAmountLabel: UILabel!
    
    @IBOutlet weak var MorePetStepper: UIStepper!
    
    @IBOutlet weak var PetSwitch: UISwitch!
    
    @IBAction func IntroductionGenerate(_ sender: UIButton) {
        let year = AcademicYearSegment.titleForSegment(at: AcademicYearSegment.selectedSegmentIndex)
        
        let introduction = "Hi, I am \(FirstNameTextField.text!) \(LastNameTextField.text!). I am a student of \(SchoolNameTextField.text!), \(year!), and I have \(PetAmountLabel.text!) dogs. :D It is \(PetSwitch.isOn) that I want more pets."
        print(introduction)
        
        //Alert prompted
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        //Alert dimissmed
        let action = UIAlertAction(title: "Cool!", style: .default, handler: nil)
        
        //Alert can be dismissed
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func BigStepper(_ sender: UIStepper) {
        PetAmountLabel.text = "\(Int(sender.value))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

