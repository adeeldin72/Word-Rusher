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
var scene2 = SKScene(fileNamed: "")


class nilScene: SKScene, SKPhysicsContactDelegate {

    override func didMove(to view: SKView) {
        removeAllChildren()
        
        if totalLife > 0 {
            viewController().callMe()
            self.view?.presentScene(scene1)
        } else {
            
                self.view?.presentScene(changeScene1)
            }
        
        }
    
}
