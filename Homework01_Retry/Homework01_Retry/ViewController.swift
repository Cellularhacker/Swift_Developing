//
//  ViewController.swift
//  Homework01_Retry
//
//  Created by Dongwon Lee on 2017. 12. 12..
//  Copyright © 2017년 Dongwon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    private var imgCnt = 0
    
    // Images
    private let images:[UIImage] = [ UIImage( named: "Image" )!, UIImage( named: "Image2" )!, UIImage( named: "Image3" )!, UIImage( named: "Image4" )!, UIImage( named: "Image5" )! ]
    
    // UI Components
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var randomBtn: UIButton!
    @IBOutlet weak var changeImgBtn: UIButton!
    
    @IBOutlet weak var imageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialzing
        imageView.image = images[0]
        
        // adding Targets.
        randomBtn.addTarget(self, action: #selector( randomAction ), for: .touchUpInside)
        changeImgBtn.addTarget(self, action: #selector( changeAction ), for: .touchUpInside)
    } //end func

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    } //end func
    
    @objc private func changeAction( sender:UIButton ) {
        if imageView.image != images[4] {
            imgCnt = imgCnt + 1
            imageView.image = images[imgCnt]
        } else {
            imgCnt = 0
            imageView.image = images[0]
        }
    } //end func
    @objc private func randomAction ( sender:UIButton ) {
        switch(imgCnt) {
        case 0:
            imageLabel.text = "싸우지말고 히오스해 " + String(imgCnt + 1)
            let second:SecondVC = SecondVC()
            self.present(second, animated: true, completion: nil)
            break
        case 1:
            imageLabel.text = "싸우지말고 히오스해 " + String(imgCnt + 1)
            let third:ThirdVC = ThirdVC()
            self.present(third, animated: true, completion: nil)
            break
        case 2:
            imageLabel.text = "자..잡아먹지 말아주세요!!! " + String(imgCnt + 1)
            break
        case 3:
            imageLabel.text = "우리 흰둥이를 잘 부탁하겠느니라. " + String(imgCnt + 1)
            break
        case 4:
            imageLabel.text = "IDW다냐! " + String(imgCnt + 1)
        default:
            break
        }
    }


}

