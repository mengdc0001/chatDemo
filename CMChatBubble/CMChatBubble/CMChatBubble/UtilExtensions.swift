//
//  UtilExtensions.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/19.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class UtilExtensions: NSObject {

}


extension UIView {
    var x : Double {
        get {
            return Double(self.frame.origin.x)
        }
        set {
            frame = CGRect(x: CGFloat(newValue), y: frame.origin.y, width: frame.size.width, height: frame.size.height)
        }
    }
    
    var y : Double {
        get {
            return Double(self.frame.origin.y)
        }
        set {
            frame = CGRect(x: frame.origin.x, y: CGFloat(newValue), width: frame.size.width, height: frame.size.height)
        }
    }
    
    var width : Double {
        get {
            return Double(self.frame.size.width)
        }
        set {
            frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: CGFloat(newValue), height: frame.size.height)
        }
    }
    
    var height : Double {
        get {
            return Double(self.frame.size.height)
        }
        set {
            frame = CGRect(x: frame.origin.x, y: frame.origin.y, width:frame.size.width , height: CGFloat(newValue))
        }
    }
}
