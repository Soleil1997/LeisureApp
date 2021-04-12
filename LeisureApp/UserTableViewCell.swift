//
//  UserTableViewCell.swift
//  LeisureApp
//
//  Created by 湊航太 on 2021/04/04.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var UserImageView: UIImageView!
    @IBOutlet weak var UserNameJPLabel: UILabel!
    @IBOutlet weak var UserAgeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
