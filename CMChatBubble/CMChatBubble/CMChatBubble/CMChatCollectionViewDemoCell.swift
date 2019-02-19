//
//  CMChatCollectionViewDemoCell.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/19.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class CMChatCollectionViewDemoCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakefromnib")
        // Initialization code
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        print("layout modify method called")
        return layoutAttributes
    }
}
