//
//  ItemsViewController.swift
//  Inventory Amanotes
//
//  Created by TZN on 27/11/2018.
//  Copyright © 2018 TZN. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib.init(nibName: "ItemsViewCell", bundle: nil), forCellReuseIdentifier: "ItemsCell")
        
        // remove bottom line navbar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        // no show footer tableview
        tableView.tableFooterView = UIView()
        
//        // set status bar light
//        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

extension ItemsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: ItemsViewCell = tableView.dequeueReusableCell(withIdentifier: "ItemsCell", for: indexPath) as? ItemsViewCell {
            return cell
        }
        
        return UITableViewCell()
    }
}


