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

let GameScene1 = SKScene(fileNamed: "GameScene")

    var winCounterStar = 0

    var check = 1
    var win:Int = 0
    var lives1 = 0
    var score1: Int = 100
    var runPopUpAd = "nil"

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    override func sceneDidLoad() {
        scaleMode = .resizeFill
        scaleMode = .fill
    }
     //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "restartButton" { //is actually new ad with hint button
                UserDefaults.standard.set("1", forKey: "currentScenesKey");
                currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "1"
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
                
                DispatchQueue.main.async {
                    self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                    
                }
                
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
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }

}
