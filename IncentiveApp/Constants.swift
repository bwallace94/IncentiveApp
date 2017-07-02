//
//  Constants.swift
//  IncentiveApp
//
//  Created by Bria Wallace on 6/30/17.
//  Copyright © 2017 Bria Wallace. All rights reserved.
//

import Foundation
import UIKit

struct ColorStyle {
    struct NavigationBar {
        static let buttonActive = hexStringToUIColor(hex: "#000000")
        static let buttonInactive = hexStringToUIColor(hex: "#D8D8D8")
        static let buttonActiveText = hexStringToUIColor(hex: "#FFFFFF")
        static let buttonInactiveText = hexStringToUIColor(hex: "#4D4747")
    }
    
    struct HamburgerMenu {
        static let background = hexStringToUIColor(hex: "#4D4747")
        static let text = hexStringToUIColor(hex: "#F9F9F9")
    }
    
    struct Cell {
        static let background = hexStringToUIColor(hex: "#FFFFFF")
        static let border = hexStringToUIColor(hex: "#000000")
        static let lightText = hexStringToUIColor(hex: "#888B8D")
        static let darkText = hexStringToUIColor(hex: "#4D4747")
        static let buttonActive = hexStringToUIColor(hex: "#86F39A")
        static let buttonInactive = hexStringToUIColor(hex: "#D8D8D8")
        static let buttonActiveText = hexStringToUIColor(hex: "#4D4747")
        static let buttonInactiveText = hexStringToUIColor(hex: "#888B8D")
    }
    
    struct Application {
        static let text = hexStringToUIColor(hex: "#4D4747")
        static let background = hexStringToUIColor(hex: "#F9F9F9")
    }
    
}


func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.characters.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
