import UIKit
import GoogleMobileAds

var admobDelegate = AdMobDelegate()

//Declare a global variable currentVc to hold reference to current view controller


class AdMobDelegate: NSObject, GADInterstitialDelegate {
    
    var interstitialView: GADInterstitial!
    
    func createAd() -> GADInterstitial {
        interstitialView = GADInterstitial(adUnitID: "ca-app-pub-5703932646795722/8801170829") //ca-app-pub-3940256099942544/4411468910
        interstitialView.delegate = self
        let request = GADRequest()
        interstitialView.load(request)
        return interstitialView
    }
    
    func createAD2() {
        interstitialView = createAd()
    }
    
    func showAd() {
        if runPopUpAd == "true" {
            
        if interstitialView != nil {
            if (interstitialView.isReady == true){
                interstitialView.present(fromRootViewController:currentVc)
                runPopUpAd = "false"
            } else {
                print("ad wasn't ready")
                interstitialView = createAd()
                
            }
        } else {
            print("ad wasn't ready")
            interstitialView = createAd()
                    
            }
        }
    }
    
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        print("Ad Received")
        if ad.isReady {
            interstitialView.present(fromRootViewController: currentVc)
        }
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {

        print("Did Dismiss Screen")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "levelID") as! LevelControllerViewController

        DispatchQueue.main.async {
            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)

        }
    }
    
    func interstitialWillDismissScreen(_ ad: GADInterstitial) {
        print("Will Dismiss Screen")
    }
    
    func interstitialWillPresentScreen(_ ad: GADInterstitial) {
        print("Will present screen")
        

    }
    
    func interstitialWillLeaveApplication(_ ad: GADInterstitial) {
        print("Will leave application")
    }
    
    func interstitialDidFail(toPresentScreen ad: GADInterstitial) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "levelID") as! LevelControllerViewController
//
//        DispatchQueue.main.async {
//            self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
//
//        }
    }
    
    func interstitial(_ ad: GADInterstitial, didFailToReceiveAdWithError error: GADRequestError) {
        print("\(String(describing: ad)) did fail to receive ad with error \(String(describing: error))")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "levelID") as! LevelControllerViewController
        
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
