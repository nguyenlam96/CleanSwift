//
//  ListBookCell.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

class ListBookCell: UITableViewCell {

    @IBOutlet private weak var bookNameLabel: UILabel!
    @IBOutlet private weak var authorNameLabel: UILabel!
    @IBOutlet private weak var bookIntroduceLabel: UILabel!
    @IBOutlet private weak var bookImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
}
