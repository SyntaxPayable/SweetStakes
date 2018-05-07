//
//  MainVC.swift
//  sweet-stakes
//
//  Created by Tj on 2018-02-14.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSWReveal()
    }

    func setupSWReveal() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
