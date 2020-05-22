//
//  ChatTableViewCell.swift
//  ZaloTableView
//
//  Created by Nam Le on 5/20/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var peopleLB: UILabel!
    @IBOutlet weak var timeLB: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var contentLB: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.layer.cornerRadius = avatar.bounds.width / 2
        avatar.layer.cornerRadius = 100
        avatar.layer.masksToBounds = true
        avatar.contentMode = .scaleAspectFill
        avatar.clipsToBounds = true
        avatar.layer.borderColor = UIColor.black.cgColor
        avatar.layer.borderWidth = 4
        
        contentLB.alpha = 0.8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
