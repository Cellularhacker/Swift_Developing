//
//  ViewController.swift
//  Homework01
//
//  Created by Dongwon Lee on 2017. 12. 10..
//  Copyright © 2017년 Dongwon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Image Object
    private var currentImageNumber:Int = 0
    
    // UI Image Views
    @IBOutlet weak var imageView: UIImageView!
    
    // Containing Images
    private let images:[UIImage] = [ UIImage( named: "TestImage" )!, UIImage( named: "TestImage2" )!, UIImage ( named: "TestImage3" )!, UIImage( named: "TestImage4" )!, UIImage( named: "TestImage5" )! ]
    
    
    // UI Buttons
    @IBOutlet weak var changeImageButton: UIButton!
    @IBOutlet weak var randomButton: UIButton!
    
    
    // Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = images[0]
        
        //changeImageButton.addTarget( self, action: #selector( changeImage ), for: .touchUpInside )
        randomButton.addTarget( self, action: #selector( viewScreenChangeAction ), for: .touchUpInside )
        
    } // end func
    
    /*@objc private func changeImage ( sender:UIButton ) {
        if currentImageNumber < images.count  {
            currentImageNumber = currentImageNumber + 1
            imageView.image = images[currentImageNumber]
        } else {
            currentImageNumber = 0
            imageView.image = images[0]
        }
    } // end func*/
    @objc private func viewScreenChangeAction( sender:UIButton ) {
        
    } //end func

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

