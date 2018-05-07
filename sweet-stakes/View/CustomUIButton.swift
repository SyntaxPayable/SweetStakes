//
//  CustomUIButton.swift
//  sweet-stakes
//
//  Created by Tj on 2018-02-05.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

// Custom UI Button for the login screen(s)
@IBDesignable
class CustomUIButton: UIButton {
    
    @IBInspectable var borderWidth: CGFloat = 2.0

    override func awakeFromNib() {
        setupViews()
    }
    
    func setupViews() {
        backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.3568627451, blue: 0.4039215686, alpha: 1)
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderWidth = borderWidth
        layer.opacity = 0.85
        setTitleColor(UIColor.white, for: UIControlState.normal)
    }
    
    override func prepareForInterfaceBuilder() {
        setupViews()
    }
}
