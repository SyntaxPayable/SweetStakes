//
//  CottonCandyCell.swift
//  sweet-stakes
//
//  Created by Tj on 2018-02-16.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

// AKA the Reveal Menu Table View cell
class CottonCandyCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupRow(withName name: String) {
        nameLbl.text = name
    }

}
