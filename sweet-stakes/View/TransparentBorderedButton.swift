//
//  TransparentBorderedButton.swift
//  sweet-stakes
//
//  Created by Tj on 2018-05-10.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

class TransparentBorderedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
    }

}
