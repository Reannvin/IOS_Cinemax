//
//  MovieScheduleTimeCell.swift
//  cinema
//
//  Created by wh on 2022/5/15.
//

import UIKit

class DumbledoreScheduleTimeCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    
    //时间label
    @IBOutlet weak var timeLabel: UILabel!
    
    //确定按钮
    @IBOutlet weak var confirmButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.selectionStyle = .none
        cardView.layer.cornerRadius = 5
//        cardView.layer.shadowColor = UIColor.lightGray.cgColor
//        cardView.layer.opacity = 1
//        cardView.layer.shadowRadius = 5
//        cardView.layer.shadowOffset = .zero
        
        cardView.layer.shadowColor = UIColor.lightGray.cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowOffset = .zero
        cardView.layer.shadowRadius = 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
}
