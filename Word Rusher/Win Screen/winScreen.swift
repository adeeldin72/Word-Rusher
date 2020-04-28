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

var totalHeartsToDisplay = 0


class winScreen: SKScene, SKPhysicsContactDelegate {
    //MAIN CODE
 
    var heart3Image = SKSpriteNode()
    var heart2Image = SKSpriteNode()
    var heart1Image = SKSpriteNode()
    override func didMove(to view: SKView) {
        if totalHeartsToDisplay == 1 {
            
            heart1Image = SKSpriteNode(imageNamed: "star")
            heart1Image.size = (CGSize.init(width: 16, height: 16))
            heart1Image.position = CGPoint.init(x: -38.405, y: 232.025)
            scene?.addChild(heart1Image)

            
        }
        
        if totalHeartsToDisplay == 2 {
            
            heart1Image = SKSpriteNode(imageNamed: "star")
            heart1Image.size = (CGSize.init(width: 16, height: 16))
            heart1Image.position = CGPoint.init(x: -38.405, y: 232.025)
            scene?.addChild(heart1Image)
            
            heart2Image = SKSpriteNode(imageNamed: "star")
            heart2Image.size = (CGSize.init(width: 16, height: 16))
            heart2Image.position = CGPoint.init(x: 3.595, y: 232.025)
            scene?.addChild(heart2Image )
            
            
        }
        if totalHeartsToDisplay == 3 {
            heart1Image = SKSpriteNode(imageNamed: "star")
            heart1Image.size = (CGSize.init(width: 16, height: 16))
            heart1Image.position = CGPoint.init(x: -38.405, y: 232.025)
            scene?.addChild(heart1Image)
            
            heart2Image = SKSpriteNode(imageNamed: "star")
            heart2Image.size = (CGSize.init(width: 16, height: 16))
            heart2Image.position = CGPoint.init(x: 3.595, y: 232.025)
            scene?.addChild(heart2Image )
            
            heart3Image = SKSpriteNode(imageNamed: "star")
            heart3Image.size = (CGSize.init(width: 16, height: 16))
            heart3Image.position = CGPoint.init(x: 45.595, y: 232.18)
            scene?.addChild(heart3Image)
        }
        
        scaleMode = .resizeFill
        scaleMode = .fill
        sceneDidLoad()
        currentScene = currentScene + 1
        
        UserDefaults.standard.set(currentScene, forKey: "currentScenesKey");
        
        currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "1"
        
        viewController().callMe()



    }
    override func sceneDidLoad() {
        scaleMode = .resizeFill
        scaleMode = .fill

    }
    func removeAllChildrens() {
        heart1Image.removeFromParent()
        heart2Image.removeFromParent()
        heart3Image.removeFromParent()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "nextLevel" {
                removeAllChildrens()
                self.view?.presentScene(nilScene1)
                
                
                
            }
            if touchedNode.name == "homeButton" {
                removeAllChildrens()
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
                
                DispatchQueue.main.async {
                    self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                    
                }
                
            }
            if touchedNode.name == "changeSkin" {
                removeAllChildrens()
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "skinID")
                
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
