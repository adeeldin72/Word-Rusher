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

class skinScene: SKScene, SKPhysicsContactDelegate {
    //MAIN CODE
    override func didMove(to view: SKView) {
 
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "nextLevel" {
                 self.view?.presentScene(scene1)
            }
        }
    }

}
