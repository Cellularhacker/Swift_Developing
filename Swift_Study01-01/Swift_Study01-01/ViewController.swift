//
//  ViewController.swift
//  Swift_Study01-01
//
//  Created by Dongwon Lee on 2017. 12. 9..
//  Copyright © 2017년 Dongwon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var buttonTest: UIButton!
    @IBOutlet weak var changeBtn: UIButton!
    
    private var nonnullable:String = "str"
    private var mutable:String?
    
    private let images:[UIImage] = [ UIImage( named: "TestImage" )!, UIImage( named: "TestImage2" )! ]
    
    
    //private let button:UIButton = UIButton()
    //=>스토리보드가 아닌 코드상에서 직접 버튼 만들때.
    
    // --딱 한번 실행되는 영역--
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // String의 Null 가능 여부 테스트
        /*
         nonnullable = nil
         mutable = nil
         */
        
        imageView.image = images[0]
        
        
        buttonTest.addTarget(self, action: #selector( touched ), for: .touchUpInside)
        changeBtn.addTarget(self, action: #selector (changeAction ), for: .touchUpInside)
    } // end func
    
    @objc private func touched ( sender:UIButton ) {
        //print("Fuck you dota")  // Console 출력함수
        
        let second:SecondVC = SecondVC()
        self.present(second, animated: true, completion: nil) // completion: 표시 완료후 돌려줄 콜백하수, nill -> null 이라는 의미.
    } // end func
    @objc private func changeAction( sender: UIButton ) {
        //imageView.image = UIImage( named: "TestImage2" )
        if imageView.image == images[0] {
            imageView.image = images[1]
        } else {
            imageView.image = images[0]
        }
        
        
    } // end func
    
    /*
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        <#code#>
    }*/
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

