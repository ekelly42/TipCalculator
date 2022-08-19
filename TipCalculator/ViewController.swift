//
//  ViewController.swift
//  TipCalculator
//
//  Created by Eric Kelly on 8/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount
        let bill = Double(BillAmountTextField.text!) ?? 0

        // get tip by multiplying bill * tip %
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // set tip label
        tipAmountLabel.text = String(format: "%.2f", tip)
        
        // set total label
        totalLabel.text = String(format: "%.2f", total)
        
    }

}

