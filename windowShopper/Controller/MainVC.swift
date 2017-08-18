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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let caltBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        caltBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4857391715, blue: 0, alpha: 1)
        caltBtn.setTitle("Calculate", for: .normal)
        caltBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        caltBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = caltBtn
        priceTxt.inputAccessoryView = caltBtn
    }
    

    @objc func  calculate() {
        print("we got here")
    }


}

