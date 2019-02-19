//
//  CMChatVoiceInCollectionViewCell.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/19.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class CMChatVoiceInCollectionViewCell: CMCollectionViewBaseCell {

    @IBOutlet weak var centerTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var headTopConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var infoLabel : UILabel?
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        return layoutAttributes
    }
    


}
