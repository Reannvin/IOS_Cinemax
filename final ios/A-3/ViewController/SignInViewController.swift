//
//  SignInViewController.swift
//  A-3
//
//  Created by Cy Lyu on 2022/5/10.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //make a placeholder
        emailText.attributedPlaceholder = NSAttributedString(string: "Email",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        emailText.delegate = self
        
        pwdText.attributedPlaceholder = NSAttributedString(string: "Password",
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        pwdText.delegate = self
       
//
    }
//
}


