//
//  levelViewController.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-08-10.
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

var currentVc: UIViewController!


class interstitialAdController: UIViewController {
    
    var interstitial: GADInterstitial!
    
    override func viewDidLoad() {
        if runPopUpAd == "true" {
            currentVc = self
            admobDelegate.showAd()
            runPopUpAd = "false"
            
        }
        
            
        }
    
}
