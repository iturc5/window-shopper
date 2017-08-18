//
//  CurrencyTextField.swift
//  windowShopper
//
//  Created by David Ortiz on 8/18/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        costumizeFunc()
    }
    
    override func awakeFromNib() {
        super .awakeFromNib()
        costumizeFunc()
    }
    
    func costumizeFunc(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
