//
//  ViewController.swift
//  BUApp
//
//  Created by Yihan Wang on 2022/2/17.
//

import UIKit
import LCHereSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton(type: .contactAdd)
        view.addSubview(btn)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        btn.addTarget(self, action:#selector(jump), for: .touchUpInside)
    }
    
   @objc func jump() {
       let vc = TestViewController()
        self.present(vc, animated: false, completion: nil)
    }


}

