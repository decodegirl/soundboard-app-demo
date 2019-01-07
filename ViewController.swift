//
//  ViewController.swift
//  musicplayer
//
//  Created by Celine Surai on 1/6/19.
//  Copyright © 2019 Celine Surai. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioplayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sound = Bundle.main.path(forResource:"sound1", ofType: "mp3")
        
        do {
            //try to initialize it
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:sound!))
        }
        
        catch {
            //it will point an error
            print(error)
        }
}
    
    @IBAction func Buttontapped(_ sender: UIButton) {
        
        audioplayer.play()
    }
    
}

