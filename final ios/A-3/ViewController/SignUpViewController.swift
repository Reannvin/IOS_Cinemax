//
//  SignUpViewController.swift
//  A-3
//
//  Created by Cy Lyu on 2022/5/10.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var pwdText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //make a placeholder
        nameText.attributedPlaceholder = NSAttributedString(string: "Full Name",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

        emailText.attributedPlaceholder = NSAttributedString(string: "Email",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        pwdText.attributedPlaceholder = NSAttributedString(string: "Password",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
       
    }
    

    

}
