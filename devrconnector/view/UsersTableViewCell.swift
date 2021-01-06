//
//  UsersTableViewCell.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet weak var labelCurrentPosition: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
