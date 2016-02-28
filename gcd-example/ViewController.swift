//
//  ViewController.swift
//  gcd-example
//
//  Created by sodas on 2/28/16.
//  Copyright © 2016 sodas. All rights reserved.
//

import UIKit

func gcd<T: IntegerType>(numberA: T, _ numberB: T) -> T {
    let largeNumber = max(numberA, numberB)
    let smallNumber = min(numberA, numberB)
    return smallNumber != 0 ? gcd(smallNumber, largeNumber % smallNumber) : largeNumber
}

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var gcdNumberLabel: UILabel!
    
    @IBAction func calculateGCD(sender: AnyObject) {
        guard let firstNumberText = self.firstNumberTextField.text, numberA = Int(firstNumberText) else {
            self.gcdNumberLabel.text = "Cannot get parse value of first field. got \(self.firstNumberTextField.text)"
            return
        }

        guard let secondNumberText = self.secondNumberTextField.text, numberB = Int(secondNumberText) else {
            self.gcdNumberLabel.text = "Cannot get parse value of second field. got \(self.secondNumberTextField.text)"
            return
        }

        self.gcdNumberLabel.text = "\(gcd(numberA, numberB))"
    }
}

