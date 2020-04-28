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

let totalLives =  UserDefaults.standard.string(forKey: "totalLifeKey") ?? "3"
var totalLife:Int = Int(totalLives) ?? 3
var heartCheck = false

class lives: SKScene, SKPhysicsContactDelegate {
    //MAIN CODE
//
//    var secondNumberHour: Int = 0
//    var firstNumberHour: String = ""
//    var differenceBetweenHours = 0
//    var totalHeart:Int = 0
//    var heartConversion:String = ""
//
//    let hour = Calendar.current.component(.minute, from: Date())
    let totalLives =  UserDefaults.standard.string(forKey: "totalLifeKey") ?? "3"
//    let hour2 =  UserDefaults.standard.string(forKey: "hour2Key") ?? ""
//    let heart1 =  UserDefaults.standard.string(forKey: "heartKey") ?? ""
//    let second1 = UserDefaults.standard.string(forKey: "secondKey") ?? ""
//
//
//
    func callMe() {
//
        totalLife = Int(totalLives) ?? 3
        print(totalLife)
//
//
//        if hour1 == "" {
//
//            firstNumberHour = String(hour)
//            UserDefaults.standard.set(firstNumberHour, forKey: "secondKey");
//            print(firstNumberHour, "this is the first hour")
//            UserDefaults.standard.set(firstNumberHour, forKey: "hour1Key");
//            UserDefaults.standard.set("good", forKey: "hour2Key");
//
//            print("This is from hour1 this is your fisrt number", firstNumberHour, "displayed by the USERDEFAULT and this is what is in hour1", firstNumberHour, "this is what is in hour2", hour2)
//            print("")
//
//            return
//            //code ends before continuing as to not ruin the code
//        }
//        //hour2 was changed to good in hour1
//        if hour2 == "good" {
//
//            secondNumberHour = hour
//
//            let minute: Int = Int(second1) ?? 0
//            UserDefaults.standard.set("", forKey: "secondKey");
//
//            print("This number is your second hourly number", secondNumberHour, "and this is your converted first number hour so it can be divided", minute )
//            print("")
//
//            differenceBetweenHours = secondNumberHour - minute
//
//            if differenceBetweenHours < 0 {
//                differenceBetweenHours = (0 - differenceBetweenHours )
//                print("")
//                print("the differenceBetweenHours total was negative so it has been converted to positive")
//                print("")
//            }
//            print(differenceBetweenHours, "This is the final difference")
//            print("")
//
//
//        }
//
//        UserDefaults.standard.set("", forKey: "hour1Key");
//        UserDefaults.standard.set("continue", forKey: "hour2Key");
//        if differenceBetweenHours < 4 {
//            print("")
//            differenceBetweenHours = 0
//        }
//        if differenceBetweenHours == 0 && heart == 0 {
//            heart = 3
//        }
//            if differenceBetweenHours >= 4 && differenceBetweenHours < 8 {
//                print("you got one new life")
//                UserDefaults.standard.set("", forKey: "hour1Key");
//                UserDefaults.standard.set("continue", forKey: "hour2Key");
//                differenceBetweenHours = 0
//                if heart1 >= "0" {
//                    totalHeart = 3
//                    heartConversion = String(totalHeart)
//                    UserDefaults.standard.set(heartConversion, forKey: "heartKey");
//                    checkHeart()
//                }
//                if heart > 0 && heart < 3  {
//                    totalHeart = heart + 1
//                    heartConversion = String(totalHeart)
//                    UserDefaults.standard.set(heartConversion, forKey: "heartKey");
//                    checkHeart()
//                }
//            }
//            if differenceBetweenHours >= 8 && differenceBetweenHours < 12 {
//                print("you got 2 new lives")
//                UserDefaults.standard.set("", forKey: "hour1Key");
//                UserDefaults.standard.set("continue", forKey: "hour2Key");
//                differenceBetweenHours = 0
//                if heart > 0 && heart < 2 {
//                    totalHeart = heart + 2
//                    heartConversion = String(totalHeart)
//                    UserDefaults.standard.set(heartConversion, forKey: "heartKey");
//                    checkHeart()
//                }
//            }
//
//            if differenceBetweenHours >= 12 {
//                print("you got 3 new lives")
//                UserDefaults.standard.set("", forKey: "hour1Key");
//                UserDefaults.standard.set("continue", forKey: "hour2Key");
//                differenceBetweenHours = 0
//                if heart >= 0 && heart < 1 {
//                    totalHeart = heart + 3
//                    heartConversion = String(totalHeart)
//                    UserDefaults.standard.set(heartConversion, forKey: "heartKey");
//                    checkHeart()
//
//                }
//            }
//
//
        }
//
//        //CHECKS WHERE TO ASSIGN THE VALUE
    func removeHeart() {
        totalLife = totalLife - 1
        UserDefaults.standard.set(totalLife, forKey: "totalLifeKey");
       
    }  //ASSIGNS  THE PROPER HOURS FOR FORMULA
    func addMaxHeart() {
        totalLife = 3
        UserDefaults.standard.set(totalLife, forKey: "totalLifeKey");
    }
    
    
//
//    func checkHeart() {
//        if heartConversion == "" {
//            UserDefaults.standard.set("2", forKey: "heartKey");
//        }
//        if heartConversion == "1" {
//            heart = 1
//            print("1 heart")
//        }
//        if heartConversion == "2" {
//            heart = 2
//            print("2 heart")
//        }
//        if heartConversion == "3" {
//            heart = 3
//            print("3 heart")
//        }
//        if heartConversion == "0" {
//            heart = 0
//            print("0 heart")
//        }
//    }
//
//

    }

