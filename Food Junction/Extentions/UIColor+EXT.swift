//
//  UIColor+EXT.swift
//  Food Junction
//
//  Created by apple on 07/04/2022.
//

import UIKit
//MARK: - status bar style change COLOR
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {

let redValue = CGFloat(red) / 255.0
let greenValue = CGFloat(green) / 255.0
let blueValue = CGFloat(blue) / 255.0
self.init(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
}
