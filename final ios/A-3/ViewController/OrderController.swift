//
//  ViewController.swift
//  CinemaOrder
//
//  Created by cheng zhu on 2022/5/18.
//

import UIKit
struct Product {
    var name: String
    var price: Double
}
class OrderController: UIViewController {
   // @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var total = 0.0
    var cartNum = 0
    var orderNum = 0
    var products =  [
        Product(name:"Adult",price:27.00),
        Product(name:"Child",price:21.00),
        Product(name:"Pensioner",price:23.00),
        Product(name:"Senior",price:20.50),
        Product(name:"Student",price:23.00),
    ]
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var payButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    
    }
   
    @IBAction func paybackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "backTickets", sender: nil)
    }
    
    
    @IBAction func payButtonClicked(_ sender: Any) {
        if(cartNum == orderNum ){
        warningLabel.text = nil
        performSegue(withIdentifier: "paymentSegue", sender: nil)
        } else{
            warningLabel.text = "Please chose the right ticket number"
        }

    }
    
}

extension OrderController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell") as! Mycell
        cell.delegate = self
        cell.totalPrice = products[indexPath.row].price
        cell.nameLbl.text = products[indexPath.row].name
        cell.priceLbl.text = String(products [indexPath.row].price)
     
        
        return cell
    
    
    }
    
    
}


extension OrderController: UITableViewDelegate{
    
    
    
    
}


extension OrderController: myCellDelegate{
    func plus(num: Int, price: Double) {
        cartNum += 1
        cartButton.setTitle("\(cartNum) of \(orderNum) ", for: .normal)
        total += price
        print(price)
        priceLabel.text = String(total)

    }
    
    func substract(num: Int, price: Double) {
        cartNum -= 1
        cartButton.setTitle("\(cartNum) of \(orderNum) ", for: .normal)
        total -= price
        priceLabel.text = String(total)

    }
    

    

    
}
