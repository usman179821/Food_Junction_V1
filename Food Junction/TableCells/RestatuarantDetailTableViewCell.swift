//
//  RestatuarantDetailTableViewCell.swift
//  Food Junction
//
//  Created by apple on 04/04/2022.
//

import UIKit

class RestatuarantDetailTableViewCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 0
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
