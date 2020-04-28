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

var loseScene1 = SKScene(fileNamed: "loseScene")
var hintCheck = false
var hint = false
var nilScene1 = SKScene(fileNamed: "nilScene")

class loseScene: SKScene, SKPhysicsContactDelegate {
    var label = SKLabelNode()
    let GameScene = SKScene(fileNamed: "GameScene")
    
    override func sceneDidLoad() {
        scaleMode = .resizeFill
        scaleMode = .fill
    }
    
    override func didMove(to view: SKView) {
        
        label = self.childNode(withName: "score") as! SKLabelNode
        label.text = totalScore
        changeLabel()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "retryButton" {
                if totalLife == 0 {
                    runPopUpAd = "true"
                    self.view?.presentScene(changeScene1)
                    
                   
                   
                    
                }
                if totalLife > 0 {
                    view!.presentScene(nilScene1)
                }
            }
            
            if touchedNode.name == "newLifeWithAd" { //is actually new ad with hint button
                hintCheck = true
                LevelControllerViewController().run()
                
                
            }
            if touchedNode.name == "homebutton" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
                
                DispatchQueue.main.async {
                    self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                    
                }
            }
        }
    }
    
    func updateScore(){
        
        let label = self.childNode(withName: "scoreLabel") as? SKLabelNode
        label?.text = totalScore

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
