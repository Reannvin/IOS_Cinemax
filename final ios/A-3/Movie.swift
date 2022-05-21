//
//  Movie.swift
//  A-3
//
//  Created by Cy Lyu on 2022/5/11.
//

import Foundation
import UIKit
struct Movie{
    let title: String
    let image: UIImage
}
let movies: [Movie] = [
    Movie(title: "Sonic The HEdgehog 2", image: #imageLiteral(resourceName: "Sonic The Hedgehog2")),
    Movie(title: "The bad guys", image: #imageLiteral(resourceName: "the-bad-guys")),
    Movie(title: "The Secrets Of Dumbledore", image: #imageLiteral(resourceName: "TheSecretsOfDumbledore"))

]
