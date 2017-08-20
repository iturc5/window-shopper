//
//  ViewController.swift
//  windowShopper
//
//  Created by David Ortiz on 8/18/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let caltBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        caltBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4857391715, blue: 0, alpha: 1)
        caltBtn.setTitle("Calculate", for: .normal)
        caltBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        caltBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = caltBtn
        priceTxt.inputAccessoryView = caltBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    

    @objc func  calculate() {
        if let wageText = wageTxt.text, let priceTxt = priceTxt.text {//first check if the fields are not empty
            
            if let wage = Double(wageText), let price = Double(priceTxt) {// second convert the data in the fields in to doubles or (numbers) couse they can type letters too
                view.endEditing(true)//clear the labels
                resultLbl.isHidden = false//show the results
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"//using the clas func that we build in the wage.swift file to do the thinking and convert result to an int
            }
        }
        
        
    }
    @IBAction func clearCalculatorPress(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    

}

