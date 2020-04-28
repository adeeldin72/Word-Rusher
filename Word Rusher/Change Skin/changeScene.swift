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

var changeScene1 = SKScene(fileNamed: "changeScene")



class changeScene: SKScene, SKPhysicsContactDelegate, GADBannerViewDelegate {
    let GameScene = SKScene(fileNamed: "GameScene")
    var label = SKLabelNode()
    var runPopAd: Bool = false

    
    override func sceneDidLoad() {
     
        scaleMode = .resizeFill
        scaleMode = .fill

    }
    
    override func didMove(to view: SKView) {
        label = self.childNode(withName: "scoreLabel") as! SKLabelNode
        label.text = totalScore
        scoreSystem().callMe()
        changeLabel()
        
        if runPopUpAd == "true" {
            print("run pop up ad was true")
            LevelControllerViewController().runPopUpAdNow()
            
        } else {
            print("run pop up ad was false")
            print(runPopUpAd, "this is current variable in run pop up ad")
        }
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "newLife" {
                if totalScores >= 50 {
                scoreSystem().removeScorePurchasedLives()
                scoreSystem().callMe()
                lives().addMaxHeart()
                lives().callMe()
                scoreSystem().callMe()
                view!.presentScene(nilScene1)
                
                }
            }
            if touchedNode.name == "newLifeWithAd" {
                heartCheck = true
                LevelControllerViewController().run()
                
                    
                }
                
            
            if touchedNode.name == "homeButton" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
                
                DispatchQueue.main.async {
                    self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                    
                }
            }
        }
        
        
        }
    func changeLabel() {
        label.text = String(totalScores)
    }
    
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }

    


}
