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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    
    
}















