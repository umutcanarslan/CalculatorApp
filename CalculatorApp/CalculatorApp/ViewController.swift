//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Umut Can Arslan on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func addNumberToInput(number: String) {
        var firstNumber = String(numberLabel.text!)
        firstNumber = firstNumber + number
        numberLabel.text = String(firstNumber)
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
    }

    @IBAction func minusTapped(_ sender: Any) {
    }

    @IBAction func multipTapped(_ sender: Any) {
    }

    @IBAction func divideTapped(_ sender: Any) {
    }

    @IBAction func percentTapped(_ sender: Any) {
    }

    @IBAction func integerTapped(_ sender: Any) {
    }

    @IBAction func acTapped(_ sender: Any) {
    }

    @IBAction func commaTapped(_ sender: Any) {
    }

    @IBAction func equalsTapped(_ sender: Any) {
    }

}

