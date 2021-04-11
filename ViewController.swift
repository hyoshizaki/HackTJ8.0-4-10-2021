//
//  ViewController.swift
//  HackTJ4-10-2021
//
//  Created by Shuji Yoshizaki on 4/10/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var bgmPlayer = AVAudioPlayer()
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        do{
            bgmPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource:"On It Maestro", ofType: "mp3")!))
            bgmPlayer.prepareToPlay()
        } catch {
            print(error)
        }
        
        
        let yourView = UIView(frame:CGRect(x:-50, y:-50, width:500, height:125))
        yourView.layer.borderWidth = 5
        yourView.layer.borderColor = UIColor.green.cgColor
        view.addSubview(yourView)
        bgmPlayer.play()
        
        }
        // Do any additional setup after loading the view.
    // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"my.D.A.D. background.jpg"]];


    
}

