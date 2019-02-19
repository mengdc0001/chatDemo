//
//  CMCollectionViewBaseCell.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/19.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class CMCollectionViewBaseCell: UICollectionViewCell {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("cell draw rect method called")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("cell layout subviews called")
    }
}
