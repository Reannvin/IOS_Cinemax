//
//  movieTableViewCell.swift
//  A-3
//
//  Created by Cy Lyu on 2022/5/15.
//

import UIKit

class movieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var movieCellView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
