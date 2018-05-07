//
//  PinkTextField.swift
//  sweet-stakes
//
//  Created by Tj on 2018-02-14.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

class PinkTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

    override func awakeFromNib() {
        backgroundColor = #colorLiteral(red: 0.7843137255, green: 0.3490196078, blue: 0.3882352941, alpha: 1)
        layer.cornerRadius = 8.0
        layer.opacity = 0.85
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 0.968627451, green: 0.9450980392, blue: 0.9450980392, alpha: 0.4973279333)])
            attributedPlaceholder = place
        }
        textColor = UIColor.white
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}
