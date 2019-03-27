//
//  ViewController.swift
//  ImageView Animation Timer 01
//
//  Created by D7702_10 on 2019. 3. 27..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageViewer: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    @IBAction func playBtnPressed(_ sender: Any) {
        print("play pressed")
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        print("pause pressed")
        
    }
    
    
    @IBAction func stopBtnPressed(_ sender: Any) {
        print("stop pressed")
        
    }
    
}

