//
//  GameScene.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-07-15.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import GoogleMobileAds
import AVFoundation

var sfxSound =  UserDefaults.standard.string(forKey: "sfxSoundKey") ?? "true"
var musicSound = UserDefaults.standard.string(forKey: "musicSoundKey") ?? "true"
var currentSound = UserDefaults.standard.string(forKey: "currentSoundKey") ?? "isPlaying"


class mainView: UIViewController {
    var audioPlayer : AVAudioPlayer? {
        get {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return appDelegate.audioPlayer
        }
        set {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.audioPlayer = newValue
        }
    }
    

    
     func didMove(to view: SKView) {
        if totalLife > 3 {
            lives().addMaxHeart()
            
        }
   
    
    }
    override func viewDidLoad() {
 
        print(totalScores, "this is ur total score at load")
     //   runPopUpAd = "false"
        print(runPopUpAd, "this is the runPopUpAd on load")
        print(currentScene, "this is ur current Scene on load")
        print(currentScenes, "this is the number chosen for scene on load")

        try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.ambient)
        try? AVAudioSession.sharedInstance().setActive(true)
        
        viewController().callMe()
     
        
        print(currentScene, "this is ur current Scene after load")
        print(currentScenes, "this is the number chosen for scene after load")
       
        print(totalLife, "this is ur total life at load")
        if totalLife > 3 {
            lives().addMaxHeart()
            
        }
        
        playOrStopPlayer()
        
    }
    
    
    func playOrStopPlayer() {
        
        
        let sound = Bundle.main.path(forResource: "dreams", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
        let jack = audioPlayer
        
        if musicSound == "true" {
           
            jack?.numberOfLoops = -1
            jack?.play()
            UserDefaults.standard.set("isPlaying", forKey: "currentSoundKey");
            currentSound = UserDefaults.standard.string(forKey: "currentSoundKey")!
            
            
        }
        if musicSound == "false" {
            if currentSound == "isPlaying" {
            jack?.stop()

            UserDefaults.standard.set("notPlaying", forKey: "currentSoundKey");
            print("this is working")
            currentSound = UserDefaults.standard.string(forKey: "currentSoundKey")!
                
            }
            
        }
            
        
        
        
        
    }

    @IBAction func on(_ sender: Any) {
        if currentSound == "notPlaying" {
            UserDefaults.standard.set("true", forKey: "musicSoundKey");
            musicSound = UserDefaults.standard.string(forKey: "musicSoundKey") ?? "true"
            print(musicSound, "this is musicSoundKey")
            UserDefaults.standard.set("isPlaying", forKey: "currentSoundKey");
            playOrStopPlayer()
        }
        
    }
    
    
    @IBAction func off(_ sender: Any) {

            UserDefaults.standard.set("false", forKey: "musicSoundKey");
            musicSound = UserDefaults.standard.string(forKey: "musicSoundKey") ?? "true"
            print(musicSound, "this is musicSoundKey")
            UserDefaults.standard.set("notPlaying", forKey: "currentSoundKey");
            playOrStopPlayer()
            
        
    }
    
    @IBAction func changescene(_ sender: UIButton) {
        UserDefaults.standard.set("1", forKey: "currentScenesKey");
        currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "1"
    }
    @IBAction func button(_ sender: UIButton) {
  
        
    }
    
    @IBAction func ad(_ sender: UIButton) {
       
      
    }
    
}
