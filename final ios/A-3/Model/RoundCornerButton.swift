//
//  RoundCornerButton.swift
//  Cinema
//
//  Created by Cian on 2022/5/14.
//

import UIKit

@IBDesignable class RoundCornerButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? 7 : 0
        clipsToBounds = rounded
    }
}
