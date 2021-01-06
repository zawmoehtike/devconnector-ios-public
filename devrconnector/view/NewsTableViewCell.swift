//
//  NewsTableViewCell.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var labelAuthorName: UILabel!
    @IBOutlet weak var labelDateTime: UILabel!
    @IBOutlet weak var labelParagraph: UILabel!
    
    static var identifier : String! {
        return String(describing: self)
    }
    
    var mData : NewVO? {
        didSet {
            labelAuthorName.text = mData?.name
            labelDateTime.text = mData?.date
            labelParagraph.text = mData?.text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
