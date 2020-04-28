//
//  viewController.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-08-01.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import SceneKit

var scene1 = SKScene()


var winScene = SKScene(fileNamed: "winScreen")
var changeScenes = SKScene(fileNamed: "changeScene")

var currentScene:Int = 0
var currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "1"

class viewController: SKView {
    
    
    func callMe() {
        
        currentScene = Int(currentScenes) ?? 1
        currentLevel()
        print(currentScene, "THIS IS thE  KEY")
  
    }
    func currentLevel()
    {
        print("current Level Loaded")
        
        if currentScene == 1 {
            UserDefaults.standard.set("1", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "1"
           
            scene1 = SKScene(fileNamed: "LevelOne")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 1")
    }
        if currentScene == 2 {
            UserDefaults.standard.set("2", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "2"
            scene1 = SKScene(fileNamed: "Level2")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 2")
            
        }
        if currentScene == 3 {
            UserDefaults.standard.set("3", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "3"
            scene1 = SKScene(fileNamed: "Level3")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 3")
            
        }
        if currentScene == 4 {
            UserDefaults.standard.set("4", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "4"
            scene1 = SKScene(fileNamed: "Level4")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 4")
            
        }
        if currentScene == 5 {
            UserDefaults.standard.set("5", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "5"
            scene1 = SKScene(fileNamed: "Level5")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 5")
            
        }
        if currentScene == 6 {
            UserDefaults.standard.set("6", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "6"
            scene1 = SKScene(fileNamed: "Level6")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 6")
            
        }
        if currentScene == 7 {
            UserDefaults.standard.set("7", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "7"
            scene1 = SKScene(fileNamed: "Level7")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 7")
            
        }
        if currentScene == 8 {
            UserDefaults.standard.set("8", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "8"
            scene1 = SKScene(fileNamed: "Level8")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 8")
            
        }
        if currentScene == 9 {
            UserDefaults.standard.set("9", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "9"
            scene1 = SKScene(fileNamed: "Level9")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 9")
            
        }
        if currentScene == 10 {
            UserDefaults.standard.set("10", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "10"
            scene1 = SKScene(fileNamed: "Level10")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 10")
            
        }
        if currentScene == 11 {
            UserDefaults.standard.set("11", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "11"
            scene1 = SKScene(fileNamed: "Level11")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 11")
            
        }
        if currentScene == 12 {
            UserDefaults.standard.set("12", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "12"
            scene1 = SKScene(fileNamed: "Level12")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 12")
            
        }
        if currentScene == 13 {
            UserDefaults.standard.set("13", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "13"
            scene1 = SKScene(fileNamed: "Level13")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 13")
            
        }
        if currentScene == 14 {
            UserDefaults.standard.set("14", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "14"
            scene1 = SKScene(fileNamed: "Level14")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 14")
            
        }
        if currentScene == 15 {
            UserDefaults.standard.set("15", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "15"
            scene1 = SKScene(fileNamed: "Level15")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 15")
            
        }
        if currentScene == 16 {
            UserDefaults.standard.set("16", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "16"
            scene1 = SKScene(fileNamed: "Level16")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 16")
            
        }
        if currentScene == 17 {
            UserDefaults.standard.set("17", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "17"
            scene1 = SKScene(fileNamed: "Level17")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 17")
            
        }
        if currentScene == 18 {
            UserDefaults.standard.set("18", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "18"
            scene1 = SKScene(fileNamed: "Level18")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 18")
            
        }
        if currentScene == 19 {
            UserDefaults.standard.set("19", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "19"
            scene1 = SKScene(fileNamed: "Level19")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 19")
            
        }
        if currentScene == 20 {
            UserDefaults.standard.set("20", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "20"
            scene1 = SKScene(fileNamed: "Level20")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 20")
            
        }
        if currentScene == 21 {
            UserDefaults.standard.set("21", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "21"
            scene1 = SKScene(fileNamed: "Level21")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 21")
            
        }
        if currentScene == 22 {
            UserDefaults.standard.set("22", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "22"
            scene1 = SKScene(fileNamed: "Level22")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 22")
            
        }
        if currentScene == 23 {
            UserDefaults.standard.set("23", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "23"
            scene1 = SKScene(fileNamed: "Level23")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 23")
            
        }
        if currentScene == 24 {
            UserDefaults.standard.set("24", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "24"
            scene1 = SKScene(fileNamed: "Level24")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 24")
            
        }
        if currentScene == 25 {
            UserDefaults.standard.set("25", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "25"
            scene1 = SKScene(fileNamed: "Level25")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 25")
            
        }
        if currentScene == 26 {
            UserDefaults.standard.set("26", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "26"
            scene1 = SKScene(fileNamed: "Level26")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 26")
            
        }
        if currentScene == 27 {
            UserDefaults.standard.set("27", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "27"
            scene1 = SKScene(fileNamed: "Level27")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 27")
            
        }
        if currentScene == 28 {
            UserDefaults.standard.set("28", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "28"
            scene1 = SKScene(fileNamed: "Level28")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 28")
            
        }
        if currentScene == 29 {
            UserDefaults.standard.set("29", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "29"
            scene1 = SKScene(fileNamed: "Level29")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 29")
            
        }
        if currentScene == 30 {
            UserDefaults.standard.set("30", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "30"
            scene1 = SKScene(fileNamed: "Level30")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 30")
            
        }
        if currentScene == 31 {
            UserDefaults.standard.set("31", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "31"
            scene1 = SKScene(fileNamed: "Level31")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 31")
            
        }
        if currentScene == 32 {
            UserDefaults.standard.set("32", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "32"
            scene1 = SKScene(fileNamed: "Level32")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 32")
            
        }
        if currentScene == 33 {
            UserDefaults.standard.set("33", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "33"
            scene1 = SKScene(fileNamed: "Level33")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 33")
            
        }
        if currentScene == 34 {
            UserDefaults.standard.set("34", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "34"
            scene1 = SKScene(fileNamed: "Level34")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 34")
            
        }
        if currentScene == 35 {
            UserDefaults.standard.set("35", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "35"
            scene1 = SKScene(fileNamed: "Level35")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 35")
            
        }
        if currentScene == 36 {
            UserDefaults.standard.set("36", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "36"
            scene1 = SKScene(fileNamed: "Level36")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 36")
            
        }
        if currentScene == 37 {
            UserDefaults.standard.set("37", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "37"
            scene1 = SKScene(fileNamed: "Level37")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 37")
            
        }
        if currentScene == 38 {
            UserDefaults.standard.set("38", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "38"
            scene1 = SKScene(fileNamed: "Level38")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 38")
            
        }
        if currentScene == 39 {
            UserDefaults.standard.set("39", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "39"
            scene1 = SKScene(fileNamed: "Level39")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 39")
            
        }
        if currentScene == 40 {
            UserDefaults.standard.set("40", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "40"
            scene1 = SKScene(fileNamed: "Level40")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 40")
            
        }
        if currentScene == 41 {
            UserDefaults.standard.set("41", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "41"
            scene1 = SKScene(fileNamed: "Level41")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 41")
            
        }
        if currentScene == 42 {
            UserDefaults.standard.set("42", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "42"
            scene1 = SKScene(fileNamed: "Level42")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 42")
            
        }
        if currentScene == 43 {
            UserDefaults.standard.set("43", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "43"
            scene1 = SKScene(fileNamed: "Level43")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 43")
            
        }
        if currentScene == 44 {
            UserDefaults.standard.set("44", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "44"
            scene1 = SKScene(fileNamed: "Level44")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 44")
            
        }
        if currentScene == 45 {
            UserDefaults.standard.set("45", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "45"
            scene1 = SKScene(fileNamed: "Level45")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 45")
            
        }
        if currentScene == 46 {
            UserDefaults.standard.set("46", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "46"
            scene1 = SKScene(fileNamed: "Level46")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 46")
            
        }
        if currentScene == 47 {
            UserDefaults.standard.set("47", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "47"
            scene1 = SKScene(fileNamed: "Level47")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 47")
            
        }
        if currentScene == 48 {
            UserDefaults.standard.set("48", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "48"
            scene1 = SKScene(fileNamed: "Level48")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 48")
            
        }
        if currentScene == 49 {
            UserDefaults.standard.set("49", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "49"
            scene1 = SKScene(fileNamed: "Level49")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 49")
            
        }
        if currentScene == 50 {
            UserDefaults.standard.set("50", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "50"
            scene1 = SKScene(fileNamed: "Level50")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 50")
            
        }
        if currentScene > 50 {
            UserDefaults.standard.set("51", forKey: "currentScenesKey");
            currentScenes =  UserDefaults.standard.string(forKey: "currentScenesKey") ?? "51"
            scene1 = SKScene(fileNamed: "GameScene")!
            displayedLevel()
            print("THE CHOSEN LEVEL IS LEVEL 51")
            
        }

    
    }
    
    
    func displayedLevel() {
        print("everything completed")
    }
        
        
    
    
    
    
    
}
