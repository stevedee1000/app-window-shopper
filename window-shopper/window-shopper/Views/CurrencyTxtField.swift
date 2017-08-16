//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Stephen Desterhaft on 8/15/17.
//  Copyright © 2017 Stephen Desterhaft. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
        
        func customizeView(){
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2461740154)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}
