//
//  ViewController.swift
//  features
//
//  Created by 竹川　昌邦 on 2021/11/16.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageButtonTapped(sender: UIButton) {
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//    }
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        } completion: { (_) in
//            self.imageView.transform = CGAffineTransform.identity
//        }
        
//        UIView.animate(withDuration: 1.0,animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            UIView.animate(withDuration: 1.0,animations:  {
//                self.imageView.transform = CGAffineTransform.identity
//            })
//        }
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveLinear, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        }) { (_) in
            UIView.animate(withDuration: 1.0, animations: {
                self.imageView.transform = CGAffineTransform.identity
            })
            
        }
    }
    
    @IBAction func soundButtonTapped(sender: UIButton) {
        let url = URL(fileURLWithPath: Bundle.main.bundlePath).appendingPathComponent("sample.mp3")
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.delegate = self
            player.play()
        }catch {
            print("Faild!")
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("Finished!")
    }

}

