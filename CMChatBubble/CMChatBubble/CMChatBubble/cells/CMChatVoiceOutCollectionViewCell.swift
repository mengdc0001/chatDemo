//
//  CMChatVoiceOutCollectionViewCell.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/19.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class CMChatVoiceOutCollectionViewCell: CMCollectionViewBaseCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var infoLabel : UILabel?
    override func layoutSubviews() {
        super.layoutSubviews()
        if infoLabel == nil {
            infoLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.width, height: self.height))
            infoLabel?.font = UIFont.systemFont(ofSize: 12)
            self.addSubview(infoLabel!)
        }
        infoLabel?.text = "Voice out cell"
    }
    
}
