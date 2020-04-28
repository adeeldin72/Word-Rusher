////
////  GameScene.swift
////  Word Rusher
////
////  Created by Adeel Din on 2019-07-15.
////  Copyright © 2019 Adeel Din. All rights reserved.
////
//
import SpriteKit
import GameplayKit
import UIKit

let totalScore =  UserDefaults.standard.string(forKey: "totalScoreKey") ?? "500"
var totalScores = Int(totalScore) ?? 500

class scoreSystem: SKScene, SKPhysicsContactDelegate {
    //MAIN CODE
let totalScore =  UserDefaults.standard.string(forKey: "totalScoreKey") ?? "500"
    //
    func callMe() {
        //
        totalScores = Int(totalScore) ?? 500
        print(totalScores)
        
    }
    //
    //        //CHECKS WHERE TO ASSIGN THE VALUE
    func removeScorePurchasedLives() {
        callMe()
        totalScores = totalScores - 50
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        
        changeScene().changeLabel()
        
    }
    func removeScore() {
        callMe()
        totalScores = totalScores - 15
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
        
    }
    
    func removeScoreCostume() {
        callMe()
        totalScores = totalScores - 1000
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
        
    }
    func addScore() {
        callMe()
        totalScores = totalScores + 5
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
    }
    
    func addScore75() {
        callMe()
        totalScores = totalScores + 75
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
    }
    
    func addScoreOneStar(){
        callMe()
        totalScores = totalScores + 1
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
    }
    
    func addScoreTwoStar() {
        callMe()
        totalScores = totalScores + 5
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
    }
    func addScoreThreeStar() {
        callMe()
        totalScores = totalScores + 10
        UserDefaults.standard.set(totalScores, forKey: "totalScoreKey");
        callMe()
        changeScene().changeLabel()
    }
}

