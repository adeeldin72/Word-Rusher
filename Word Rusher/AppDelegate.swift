//
//  AppDelegate.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-07-15.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import UIKit
import GoogleMobileAds
import CoreTelephony
import AVFoundation



@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate, GADRewardBasedVideoAdDelegate {

    var window: UIWindow?
    var audioPlayer: AVAudioPlayer? = nil
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        GADRewardBasedVideoAd.sharedInstance().delegate = self
        
        GADRewardBasedVideoAd.sharedInstance().load(GADRequest(),
        withAdUnitID: "ca-app-pub-5703932646795722/5936301932")  //ca-app-pub-3940256099942544/1712485313
        

        
       
        
//        GADMobileAds.sharedInstance().start(completionHandler: nil)
        // Override point for customization after application launch.
        return true
        
    }
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd, didRewardUserWith reward: GADAdReward) {
        if heartCheck == true {
            print("heart is true")
            lives().addMaxHeart()
            lives().callMe()
            heartCheck = false
            
        }
        if hintCheck == true {
            scoreSystem().callMe()
            print(totalScores, "this is total score before added 75 points") 
            hint = false
            hintCheck = false
            scoreSystem().addScore75()
            scoreSystem().callMe()
            print(totalScores, "this is total score after added 75 points")
        }
        
        print("this reward was from app delegate")
    }
    
    func rewardBasedVideoAdDidClose(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        GADRewardBasedVideoAd.sharedInstance().delegate = self
        GADRewardBasedVideoAd.sharedInstance().load(GADRequest(),withAdUnitID: "ca-app-pub-5703932646795722/5936301932")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "levelID") as! LevelControllerViewController
        
        DispatchQueue.main.async {
            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
            
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

