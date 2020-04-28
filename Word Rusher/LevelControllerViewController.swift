//
//  LevelControllerViewController.swift
//  Word Rusher
//
//  Created by Adeel Din on 2019-08-08.
//  Copyright © 2019 Adeel Din. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds
import SpriteKit
//import GoogleMobileAds
//import GoogleUtilities
//import Pods_Word_Rusher

var runAd:String = "nil"


class LevelControllerViewController: UIViewController, GADBannerViewDelegate {
    
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    var interstitial: GADInterstitial!
    
    @IBOutlet var banner: GADBannerView?
    
    //ca-app-pub-3940256099942544/2934735716

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
//        scene1 = SKScene(fileNamed: "Level2")!
        
        banner?.isHidden = true
        banner?.delegate = self
        banner?.adUnitID = "ca-app-pub-5703932646795722/5100755070"    //ca-app-pub-3940256099942544/2934735716
        banner?.adSize = kGADAdSizeSmartBannerPortrait
        banner?.rootViewController = self
        banner?.load(GADRequest())

    }
    
    func run() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "levelAd") as! levelViewController
        
        DispatchQueue.main.async {
            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
        }
    }


    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        banner?.isHidden = false
    }
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        banner?.isHidden = true
    }
    
    func runPopUpAdNow() {
        
     
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "mainID2") as! interstitialAdController
        
        DispatchQueue.main.async {
            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
            
            }
        
        
    }
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.windows.first?.rootViewController;
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }
    

}
