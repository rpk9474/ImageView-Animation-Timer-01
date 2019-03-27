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
    var count = 1
    var isAnimation = false
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "Image1")
        countLabel.text = String(count)
    }

    
    
    @IBAction func playBtnPressed(_ sender: Any) {
        print("play pressed")
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        print("pause pressed")
        myTimer.invalidate()
    }
    
    @IBAction func stopBtnPressed(_ sender: Any) {
        print("stop pressed")
        myTimer.invalidate()
        count = 0
        // countLabel.text = String(count)
    }
    
    @objc func doAnimation() {
        if (count == 5) {
            count = 1
        } else {
            count += 1
        }
        alienImageViewer.image = UIImage(named: "Image\(count)")
        countLabel.text = String(count)
    }
    
    
    
    
    
}

