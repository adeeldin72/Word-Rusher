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




class levelViewController: UIViewController {
    let GameScene = SKScene(fileNamed: "GameScene")
    var label = SKLabelNode()
    
    
    override func viewDidLoad() {
      

        
     
        print("level view controller loaded")
        
        if GADRewardBasedVideoAd.sharedInstance().isReady == true {
            DispatchQueue.main.async {
                GADRewardBasedVideoAd.sharedInstance().present(fromRootViewController: self)
            }
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
            
            DispatchQueue.main.async {
                self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                
            }
            
            }
        }

    
    @IBAction func button(_ sender: Any) {
        if GADRewardBasedVideoAd.sharedInstance().isReady == true {
            GADRewardBasedVideoAd.sharedInstance().present(fromRootViewController: self)
            
        }    
    

    }
    @IBAction func button2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
        
        DispatchQueue.main.async {
            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
        
        }
    }
    
        
 
    

    
  
    
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }
    

    
}
