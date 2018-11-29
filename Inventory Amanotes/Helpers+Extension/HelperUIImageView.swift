//
//  HelperUIImageView.swift
//  Inventory Amanotes
//
//  Created by TZN on 27/11/2018.
//  Copyright © 2018 TZN. All rights reserved.
//

import UIKit

extension UIImageView {
    func setRounded()  {
        self.layer.cornerRadius = (self.frame.size.width / 2)
        self.layer.masksToBounds = true
    }
}
