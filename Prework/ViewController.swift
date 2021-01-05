//
//  ViewController.swift
//  Prework
//
//  Created by Kyle Khuong-Bui on 12/29/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        billLabel.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        //Calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

