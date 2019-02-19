//
//  ViewController.swift
//  CMChatBubble
//
//  Created by zhang meng on 2019/2/18.
//  Copyright © 2019 zhang meng. All rights reserved.
//

import UIKit
import Realm
import RealmSwift


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //add test button here
        let button = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        button.addTarget(self, action: #selector(test), for: .touchUpInside)
        button.backgroundColor = .black
        view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func test() {
        let vc = CMChatViewController2()
        self.present(vc, animated: true, completion: nil)
    }
}

