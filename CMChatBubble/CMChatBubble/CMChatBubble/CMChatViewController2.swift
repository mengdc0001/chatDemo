//
//  CMChatViewController2.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/18.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit

class CMChatViewController2: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var centerViewHolder: UIView!
    var collectionView : UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if collectionView == nil {
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.minimumLineSpacing = 10
            flowLayout.minimumInteritemSpacing = 10
            flowLayout.estimatedItemSize = CGSize(width: view.width, height: 121)
            flowLayout.scrollDirection = .vertical
            collectionView = UICollectionView(frame: centerViewHolder.frame, collectionViewLayout: flowLayout)
            collectionView!.register(UINib.init(nibName: "CMChatCollectionViewDemoCell", bundle: nil), forCellWithReuseIdentifier: "cell")

            collectionView!.register(UINib(nibName: "CMChatVoiceInCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "voiceIn")
            collectionView!.register(UINib(nibName: "CMChatVoiceOutCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "voiceOut")
            
            collectionView!.register(UINib(nibName: "CMChatMessageInCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "messageIn")
            collectionView!.register(UINib(nibName: "CMChatMessageOutCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "messageOut")
            
            collectionView!.register(UINib(nibName: "CMChatImageInCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "imageIn")
            collectionView!.register(UINib(nibName: "CMChatImageOutCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "imageOut")

            collectionView!.register(UINib(nibName: "CMChatTimeStampCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "timeStamp")

            
            collectionView!.y = 0
            collectionView!.backgroundColor = .orange
            collectionView!.delegate = self
            collectionView!.dataSource = self
            centerViewHolder.addSubview(collectionView!)
        }
    }
    
    //collection view delegate & datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell : UICollectionViewCell?
        if indexPath.row % 7 == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "voiceIn", for: indexPath)
        } else if indexPath.row % 6 == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "voiceOut", for: indexPath)
        } else if indexPath.row % 6 == 2 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "messageIn", for: indexPath)
        } else if indexPath.row % 6 == 3 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "messageOut", for: indexPath)
        } else if indexPath.row % 6 == 4 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageIn", for: indexPath)
        } else if indexPath.row % 6 == 5 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageOut", for: indexPath)
        } else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "timeStamp", for: indexPath)
        }
        
        cell!.setNeedsLayout()
        return cell!
    }
}















