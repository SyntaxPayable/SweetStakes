//
//  MenuVC.swift
//  sweet-stakes
//
//  Created by Tj on 2018-02-13.
//  Copyright © 2018 Myself. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Go from the Sign Up VC back to the Menu VC if pressed close btn
    @IBAction func unwindFromSignupVC(segue: UIStoryboardSegue) {}
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MENU_ITEMS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: COTTON_CANDY_CELL) as? CottonCandyCell {

            if MENU_ITEMS[indexPath.row] == SPACER {
                cell.setupRow(withName: "")
            } else {
                cell.setupRow(withName: MENU_ITEMS[indexPath.row])
            }
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == START_INDEX_BIG_ASS_CELL {
            return BIG_ASS_CELL_HEIGHT // Big ass cell height, the gap between Schedule and Support
        }
        return REGULAR_CELL_HEIGHT // Default cell size, as in the Storyboard
    }
}
