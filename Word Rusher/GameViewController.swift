//
//  GameViewController.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-07-15.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit


class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            super.viewDidLoad()
            let scene =
                GameScene(size: view.bounds.size)
            let skView = self.view as! SKView
      
            skView.presentScene(scene)
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }
    @IBAction func Level_1(_ sender: Any) {
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
