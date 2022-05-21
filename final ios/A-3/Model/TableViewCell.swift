//
//  TableViewCell.swift
//  CinemaOrder
//
//  Created by cheng zhu on 2022/5/18.
//

import UIKit
protocol myCellDelegate {
    func plus(num:Int, price:Double)
    func substract(num:Int, price:Double)
    
}




class Mycell: UITableViewCell {
    var totalPrice = 0.0
    var num = 0
    var delegate: myCellDelegate?

    @IBOutlet weak var numLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func add(_ sender: Any) {
        num += 1
        numLbl.text = String(num)
        delegate?.plus(num: num, price: totalPrice)

    }
    @IBAction func minus(_ sender: Any) {
        if(num>0) {
        num -= 1
        numLbl.text = String(num)
     delegate?.substract(num: num, price: totalPrice)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
