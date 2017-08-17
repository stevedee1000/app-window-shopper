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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8200190593, green: 0.8200190593, blue: 0.8200190593, alpha: 0.4945151969)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        //currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
            
            clipsToBounds = true
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}
