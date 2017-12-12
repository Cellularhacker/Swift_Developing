//
//  ThirdVC.swift
//  Homework01_Retry
//
//  Created by Dongwon Lee on 2017. 12. 12..
//  Copyright © 2017년 Dongwon Lee. All rights reserved.
//

import Foundation
import UIKit

class ThirdVC:UIViewController {
    //Adding a Label
    
    private let lbl:UILabel = UILabel()
    private let btn:UIButton = UIButton()
    private var image = UIImageView()
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
        
        image.image = UIImage( named: "Serval" )
        
        lbl.text = "서벌: 슦-고이! 너는 3번째 뷰까지 넘어온 프렌즈구나!"
        lbl.textColor = .white
        
        btn.setTitle("닫기", for: .normal)
        btn.addTarget(self, action: #selector ( closeHandler ), for: .touchUpInside)
        
        self.view.addSubview(image)
        self.view.addSubview(lbl)
        self.view.addSubview(btn)
    } // end override func
    override func viewWillAppear(_ animated: Bool) {
        image.sizeToFit()
        image.frame = CGRect( x: self.view.frame.width / 2 - image.frame.width / 2,
                            y: image.frame.height / 2,
                            width: image.frame.width, height: image.frame.height )
        
        lbl.sizeToFit()
        lbl.frame = CGRect( x: self.view.frame.width / 2 - lbl.frame.width / 2,
                            y: self.view.frame.height / 2 - lbl.frame.height / 2,
                            width: lbl.frame.width, height: lbl.frame.height)
        
        btn.sizeToFit()
        btn.frame = CGRect ( x: self.view.frame.width / 2 - btn.frame.width / 2,
                             y: lbl.frame.maxY + 18,
                             width: btn.frame.width, height: btn.frame.height )
    } //end override func
    
    @objc private func closeHandler( sender:UIButton ) {
        self.dismiss(animated: true, completion: nil) // dismiss 닫기, present 띄우기
    } // end func
    
}
