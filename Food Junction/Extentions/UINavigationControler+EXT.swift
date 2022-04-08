//
//  UINavigationControler+EXT.swift
//  Food Junction
//
//  Created by apple on 07/04/2022.
//

import UIKit
//MARK:- status bar style change

extension UINavigationController {
    
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
    
}
