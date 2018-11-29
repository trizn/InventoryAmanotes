//
//  ItemsViewCell.swift
//  Inventory Amanotes
//
//  Created by TZN on 27/11/2018.
//  Copyright © 2018 TZN. All rights reserved.
//

import UIKit

class ItemsViewCell: UITableViewCell {

    @IBOutlet weak var invisibleImageView: UIImageView!
    @IBOutlet weak var itemImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configSubviews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configSubviews() {
        invisibleImageView.setRounded()
        itemImageView.setRounded()
    }
    
}
