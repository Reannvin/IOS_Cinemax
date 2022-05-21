//
//  ViewController.swift
//  Cinema
//
//  Created by Cian on 2022/5/14.
//

import UIKit

class SeatViewController: UIViewController {
    
    @IBOutlet weak var A1: RoundCornerButton!
    @IBOutlet weak var A2: RoundCornerButton!
    @IBOutlet weak var A3: RoundCornerButton!
    @IBOutlet weak var A4: RoundCornerButton!
    @IBOutlet weak var A5: RoundCornerButton!
    @IBOutlet weak var A6: RoundCornerButton!
    
    @IBOutlet weak var B1: RoundCornerButton!
    @IBOutlet weak var B2: RoundCornerButton!
    @IBOutlet weak var B3: RoundCornerButton!
    @IBOutlet weak var B4: RoundCornerButton!
    @IBOutlet weak var B5: RoundCornerButton!
    @IBOutlet weak var B6: RoundCornerButton!
    
    @IBOutlet weak var C1: RoundCornerButton!
    @IBOutlet weak var C2: RoundCornerButton!
    @IBOutlet weak var C3: RoundCornerButton!
    @IBOutlet weak var C4: RoundCornerButton!
    @IBOutlet weak var C5: RoundCornerButton!
    @IBOutlet weak var C6: RoundCornerButton!
    
    @IBOutlet weak var D1: RoundCornerButton!
    @IBOutlet weak var D2: RoundCornerButton!
    @IBOutlet weak var D3: RoundCornerButton!
    @IBOutlet weak var D4: RoundCornerButton!
    @IBOutlet weak var D5: RoundCornerButton!
    @IBOutlet weak var D6: RoundCornerButton!
    
    @IBOutlet weak var E1: RoundCornerButton!
    @IBOutlet weak var E2: RoundCornerButton!
    @IBOutlet weak var E3: RoundCornerButton!
    @IBOutlet weak var E4: RoundCornerButton!
    @IBOutlet weak var E5: RoundCornerButton!
    @IBOutlet weak var E6: RoundCornerButton!
    
    @IBOutlet weak var F1: RoundCornerButton!
    @IBOutlet weak var F2: RoundCornerButton!
    @IBOutlet weak var F3: RoundCornerButton!
    @IBOutlet weak var F4: RoundCornerButton!
    @IBOutlet weak var F5: RoundCornerButton!
    @IBOutlet weak var F6: RoundCornerButton!
    
    
    @IBOutlet weak var G1: RoundCornerButton!
    @IBOutlet weak var G2: RoundCornerButton!
    @IBOutlet weak var G3: RoundCornerButton!
    @IBOutlet weak var G4: RoundCornerButton!
    @IBOutlet weak var G5: RoundCornerButton!
    @IBOutlet weak var G6: RoundCornerButton!
    
    @IBOutlet weak var seatNumber: UILabel!
    @IBOutlet weak var CheckOutButton: UIButton!
    
    @IBOutlet weak var seatPosition: UILabel!
    var seatNo: Set<String> = Set()
    var numberOfClicks = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let numberOfButtonDisable = Int.random(in: 1...10)
        
        for _ in 1...numberOfButtonDisable {
            let buttonPosition = Int.random(in: 1...42)
            if let button = self.view.viewWithTag(buttonPosition) as? UIButton {
                button.backgroundColor = .systemRed
                button.isEnabled = false
            }
            
            
        }
    
    
    }
    
    @IBAction func SeatsButtonClicked(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        print(button.tag)
        var seat: String = ""
        
        switch button.tag {
        case 1...6:
            seat = "A\(((button.tag - 1) % 6) + 1)"
        case 7...12:
            seat = "B\(((button.tag - 1) % 6) + 1)"
        case 13...18:
            seat = "C\(((button.tag - 1) % 6) + 1)"
        case 19...24:
            seat = "D\(((button.tag - 1) % 6) + 1)"
        case 25...30:
            seat = "E\(((button.tag - 1) % 6) + 1)"
        case 31...36:
            seat = "F\(((button.tag - 1) % 6) + 1)"
        case 37...42:
            seat = "G\(((button.tag - 1) % 6) + 1)"
        default:
            break
        }
        
        if !button.isSelected {
            button.backgroundColor = .blue
            button.tintColor = .none
            seatNo.insert(seat)
            numberOfClicks += 1
        } else {
            button.backgroundColor = .white
            seatNo.remove(seat)
            numberOfClicks -= 1
        }
        button.isSelected = !button.isSelected
        seatNumber.text = String(numberOfClicks)
        seatPosition.text = String(button.tag)
    }
    
    @IBAction func checkoutButtonClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "ticketSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! OrderController
        controller.orderNum = numberOfClicks
    }
}

