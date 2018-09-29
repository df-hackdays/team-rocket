//
//  ViewController.swift
//  Samantha Evil
//
//  Created by Kaan Ersan on 2018-09-28.
//  Copyright © 2018 Kaan Ersan. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playVideo()
    }

    func playVideo() {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "test", ofType:"mp4")!))        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

