//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Umut Can Arslan on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!

    var isNewOperation = true
    var isInteger = true
    var operations = ""
    var firstNumber: Double?
    var secondNumber: Double?
    var result: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func addNumberToInput(number: String) {
        var numberText = String(numberLabel.text!)

        if isNewOperation {
            numberText = ""
            isNewOperation = false
        }

        numberText = numberText + number
        numberLabel.text = String(numberText)

    }

    @IBAction func zeroTapped(_ sender: Any) {
        addNumberToInput(number: "0")
    }

    @IBAction func oneTapped(_ sender: Any) {
        addNumberToInput(number: "1")
    }

    @IBAction func twoTapped(_ sender: Any) {
        addNumberToInput(number: "2")
    }

    @IBAction func threeTapped(_ sender: Any) {
        addNumberToInput(number: "3")
    }

    @IBAction func fourTapped(_ sender: Any) {
        addNumberToInput(number: "4")
    }

    @IBAction func fiveTapped(_ sender: Any) {
        addNumberToInput(number: "5")
    }

    @IBAction func sixTapped(_ sender: Any) {
        addNumberToInput(number: "6")
    }

    @IBAction func sevenTapped(_ sender: Any) {
        addNumberToInput(number: "7")
    }

    @IBAction func eightTapped(_ sender: Any) {
        addNumberToInput(number: "8")
    }

    @IBAction func nineTapped(_ sender: Any) {
        addNumberToInput(number: "9")
    }

    @IBAction func plusTapped(_ sender: Any) {
        operations = "+"
        isNewOperation = true
        firstNumber = Double(numberLabel.text!)

    }

    @IBAction func minusTapped(_ sender: Any) {
        operations = "-"
        isNewOperation = true
        firstNumber = Double(numberLabel.text!)

    }

    @IBAction func multipTapped(_ sender: Any) {
        operations = "*"
        isNewOperation = true
        firstNumber = Double(numberLabel.text!)

    }

    @IBAction func divideTapped(_ sender: Any) {
        operations = "/"
        isNewOperation = true
        firstNumber = Double(numberLabel.text!)

    }

    @IBAction func percentTapped(_ sender: Any) {
        isNewOperation = true
        firstNumber = Double(numberLabel.text!)
        firstNumber = (firstNumber! / 100)
        numberLabel.text = String(firstNumber!)
    }

    @IBAction func integerTapped(_ sender: Any) {
    }

    @IBAction func acTapped(_ sender: Any) {
        numberLabel.text = "0"
        isNewOperation = true
    }

    @IBAction func commaTapped(_ sender: Any) {
        addNumberToInput(number: ",")
    }

    @IBAction func equalsTapped(_ sender: Any) {
        secondNumber = Double(numberLabel.text!)
        switch operations {
        case "/":
            result = (firstNumber! / secondNumber!)
        case "*":
            result = (firstNumber! * secondNumber!)
        case "-":
            result = (firstNumber! - secondNumber!)
        case "+":
            result = (firstNumber! + secondNumber!)
        default:
            result = 0

        }
        numberLabel.text = String(result!)
        isNewOperation = true
    }

}
