//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        self.playNotes(sender.tag)
        
    }
    
    func playNotes(_ sender: Int) {
        
        var notePressed: String
        
         switch sender {
        case 1:
            notePressed = "note1"
            break
        case 2:
            notePressed = "note2"
            break
        case 3:
            notePressed = "note3"
            break
        case 4:
            notePressed = "note4"
            break
        case 5:
            notePressed = "note5"
            break
        case 6:
            notePressed = "note6"
            break
        case 7:
            notePressed = "note7"
            break
        default:
            notePressed = "note1"
        }
        
        let soundURL = Bundle.main.url(forResource: notePressed, withExtension: "wav")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

