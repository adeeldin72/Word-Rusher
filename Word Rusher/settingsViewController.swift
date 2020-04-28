//
//  settingsViewController.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-08-19.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import Foundation
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


class settingsViewController: UIViewController {
  
    
    func didMove(to view: SKView) {

    }
    
    override func viewDidLoad() {
    
    }

    
    @IBAction func sfxOnButton(_ sender: Any) {
        UserDefaults.standard.set("true", forKey: "sfxSoundKey");
        sfxSound = UserDefaults.standard.string(forKey: "sfxSoundKey") ?? "true"
     

    }
    
    @IBAction func sfxButton(_ sender: Any) {
        UserDefaults.standard.set("false", forKey: "sfxSoundKey");
        sfxSound = UserDefaults.standard.string(forKey: "sfxSoundKey") ?? "true"
        
    }
    
}
