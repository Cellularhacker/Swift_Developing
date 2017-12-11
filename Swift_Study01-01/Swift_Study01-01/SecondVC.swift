//
//  SecondVC.swift
//  Swift_Study01-01
//
//  Created by Dongwon Lee on 2017. 12. 9..
//  Copyright © 2017년 Dongwon Lee. All rights reserved.
//

import Foundation
import UIKit

class SecondVC:UIViewController {
    // Adding a Label
    
    private let lbl:UILabel = UILabel()
    private let btn:UIButton = UIButton()
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = .darkGray
        // == self.view.backgroundColor = UIColor.green
        
        lbl.text = "2번째 뷰"
        lbl.textColor = .white
        
        btn.setTitle("닫기", for: .normal)
        btn.addTarget(self, action: #selector( closeHandler ), for: .touchUpInside)
        
        self.view.addSubview(lbl)
        self.view.addSubview(btn)
    }
    override func viewWillAppear(_ animated: Bool) {
        
        lbl.sizeToFit()
        lbl.frame = CGRect( x: self.view.frame.width / 2 - lbl.frame.width / 2,
                            y: self.view.frame.height / 2 - lbl.frame.height / 2,
                            width: lbl.frame.width, height: lbl.frame.height)
        
        btn.sizeToFit()
        btn.frame = CGRect ( x: self.view.frame.width / 2 - btn.frame.width / 2,
                             y: lbl.frame.maxY + 18,
                             width: btn.frame.width, height: btn.frame.height )
    }
    
    @objc private func closeHandler( sender:UIButton ) {
        self.dismiss(animated: true, completion: nil) // dismiss 닫기, present 띄우기
    } // end func
    
}
