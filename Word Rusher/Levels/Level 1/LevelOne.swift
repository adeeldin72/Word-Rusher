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
import AVFoundation

class LevelOne: SKScene, SKPhysicsContactDelegate {
    
    
    
    
    //    COLLISION SHIT NOT SURE IF NEEDED TUTORIALS TOLD ME TO DO THIS BUT SHIT NEVER WORKED
    //    BEGINNER CODER
    //    let playerCategory: UInt32  = 0x1 << 0 //1
    //    let deathCategory: UInt32   = 0x1 << 1 //2
    //    let death2Category: UInt32   = 0x1 << 2 //3
    //    let death3Category: UInt32 = 0x1 << 3 //4
    
    
    
    //VARIABLES AND SHIT
    var player = SKSpriteNode()
    var death = SKSpriteNode()
    var death2 = SKSpriteNode()
    var death3 = SKSpriteNode()
    
    var instruction = SKSpriteNode()
    var instruction1 = SKSpriteNode()
    var instruction2 = SKSpriteNode()
    var instruction3 = SKSpriteNode()
    
    var turn = 0
    var timeBool:Bool = true
    var swipeSound = AVAudioPlayer()
    var deathSound = AVAudioPlayer()
    var star1Image = SKSpriteNode()
    var star2Image = SKSpriteNode()
    var star3Image = SKSpriteNode()
    var label = SKLabelNode()
    var label1 = SKLabelNode()
    var label2 = SKLabelNode()
    //TEST FOR RIGHT SPELLING VARIABLES AND SHIT AND GAME COMPLETE
    
    var letterOne: Int = 1
    var letterTwo: Int = 0
    var letterThree: Int = 0
    var score: Int = 0
    var swipe = 0
    
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    
    //MOVEMENTS
    
    //    NOT SURE IF NEED DONT THINK ITS USED BEGINNER CODER
    //    let right = SKAction.moveBy(x: 450, y: 0, duration: 2)
    //    let left = SKAction.moveBy(x: -450, y: 0, duration: 2)
    //    let up = SKAction.moveBy(x: 0, y: 480, duration: 2)
    //    let down = SKAction.moveBy(x: 0, y: -480, duration: 2)
    //    let move = false
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    //MOVEMENTS CONTINUED
    
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    //MAIN CODE
    override func didMove(to view: SKView) {
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        UNCOMMENT OUT BEFORE UPLOADING
        //        viewController().callMe()
        //        self.view?.presentScene(scene1)
        
        //        label = self.childNode(withName: "scoreLabel") as! SKLabelNode
        //        label.text = totalScore
        //        changeLabel()
        
        physicsWorld.contactDelegate = self
        
        
        let ballradius: CGFloat = 1
        let squareRadius: CGFloat = 24
        
        
        
        
        //SETS PLAYER PHYSICS + ENEMIES
        
        
        createPlayer()
        createLetter1()
        createLetter2()
        createLetter3()
        createLives()
        createStars()
        createHint()
        
        
        print(totalLife, "THIS IS YOUR CURRENT LIFE")
        
        createWalls()
        
        player = childNode(withName: "player") as! SKSpriteNode
        player.physicsBody?.mass = 200
        player.physicsBody = SKPhysicsBody(circleOfRadius: squareRadius)
        player.physicsBody?.affectedByGravity = false
        player.physicsBody?.velocity = self.physicsBody!.velocity
        player.physicsBody?.allowsRotation = false
        player.physicsBody?.angularVelocity = 0
        player.physicsBody?.restitution = 0
        
        
        death = childNode(withName: "death") as! SKSpriteNode
        death.physicsBody = SKPhysicsBody(circleOfRadius: ballradius)
        death.physicsBody?.affectedByGravity = false
        death.physicsBody?.restitution = 0
        
        
        
        death2 = childNode(withName: "death2") as! SKSpriteNode
        death2.physicsBody = SKPhysicsBody(circleOfRadius: ballradius)
        death2.physicsBody?.affectedByGravity = false
        death2.physicsBody?.restitution = 0
        
        death3 = childNode(withName: "death3") as! SKSpriteNode
        death3.physicsBody = SKPhysicsBody(circleOfRadius: ballradius)
        death3.physicsBody?.affectedByGravity = false
        death3.physicsBody?.restitution = 0
        
        instruction = childNode(withName: "instruction1") as! SKSpriteNode
        instruction1 = childNode(withName: "instruction2") as! SKSpriteNode
        instruction2 = childNode(withName: "instruction3") as! SKSpriteNode
        instruction3 = childNode(withName: "instruction4") as! SKSpriteNode
        //SETS WALL PHYSICS
        
        //        enumerateChildNodes(withName: "wall") { (node, stop) in
        //            let wall = SKSpriteNode()
        //            wall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 60, height: 2))
        //        }
        
        
        //UISWIPEGESTURE RECONGNIZER
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeUp:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipedUp))
        swipeUp.direction = .up
        view.addGestureRecognizer(swipeUp)
        
        
        let swipeDown:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipedDown))
        swipeDown.direction = .down
        view.addGestureRecognizer(swipeDown)
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: timeBool)
        
        //COLLISIONS
        
        //player contacts
        player.physicsBody?.categoryBitMask = 1
        death.physicsBody?.collisionBitMask = 1
        death2.physicsBody?.collisionBitMask = 1
        death3.physicsBody?.collisionBitMask = 1
        
        //letter1 contacts
        death.physicsBody?.categoryBitMask = 2
        player.physicsBody?.contactTestBitMask = 2
        
        //letter2 contacts
        death2.physicsBody?.categoryBitMask = 4
        player.physicsBody?.contactTestBitMask = 4
        //letter3 contacts
        death3.physicsBody?.categoryBitMask = 6
        player.physicsBody?.contactTestBitMask = 6
        
        
        
    }
    
    
    override func sceneDidLoad() {
        scaleMode = .resizeFill
        scaleMode = .fill
    }
    func removeInstruction() {
        if swipe == 1 {
            instruction.removeFromParent()
            instruction1.removeFromParent()
        }
        if swipe == 2 {
            instruction2.removeFromParent()
        }
        if swipe == 3 {
            instruction3.removeFromParent()
        }

    }
    
    func createPlayer() {
        let player = SKSpriteNode(imageNamed: costumeSelect)
        player.size = (CGSize.init(width: 40, height: 40))
        player.position = CGPoint.init(x: 30.607, y: -100.647)
        player.name = "player"
        scene?.addChild(player)
        
        
    }
    
    ////////////////////////////////////////////////////////////////////////EDIT BELOW FOR NEW LEVELS ////////////////////
    
    func createLetter1() {
        let death = SKSpriteNode(imageNamed: "letterCCircle")
        death.size = (CGSize.init(width: 50, height: 50))
        death.position = CGPoint.init(x: -149.547, y: -99.9)
        scene?.addChild(death)
        death.name = "death"
        
    }
    func createLetter2() {
        
        let death2 = SKSpriteNode(imageNamed: "letterACircle")
        death2.size = (CGSize.init(width: 50, height: 50))
        death2.position = CGPoint.init(x: -28.774, y: -38.712)
        scene?.addChild(death2)
        death2.name = "death2"
        
    }
    
    func createLetter3() {
        let death3 = SKSpriteNode(imageNamed: "letterTCircle")
        death3.size = (CGSize.init(width: 50, height: 50))
        death3.position = CGPoint.init(x: 90.186, y: 18.983)
        scene?.addChild(death3)
        death3.name = "death3"
        
        
    }
 
    ////////////////////////////////////////////////////////////////////////EDIT ABOVE FOR NEW LEVELS ////////////////////
    
    var heart1Image = SKSpriteNode()
    var heart2Image = SKSpriteNode()
    var heart3Image = SKSpriteNode()
    
    func createLives() {
        
        
        if totalLife == 1 {
            
            heart1Image = SKSpriteNode(imageNamed: "heart")
            heart1Image.size = (CGSize.init(width: 30, height: 30))
            heart1Image.position = CGPoint.init(x: -178, y: 394)
            scene?.addChild(heart1Image)
            
            heart2Image.removeFromParent()
            heart3Image.removeFromParent()
            
            runAd = "true"
            
        }
        
        if totalLife == 2 {
            
            heart1Image = SKSpriteNode(imageNamed: "heart")
            heart1Image.size = (CGSize.init(width: 30, height: 30))
            heart1Image.position = CGPoint.init(x: -178, y: 394)
            scene?.addChild(heart1Image)
            
            heart2Image = SKSpriteNode(imageNamed: "heart")
            heart2Image.size = (CGSize.init(width: 30, height: 30))
            heart2Image.position = CGPoint.init(x: -152, y: 394)
            scene?.addChild(heart2Image )
            
            heart3Image.removeFromParent()
            
        }
        if totalLife == 3 {
            heart1Image = SKSpriteNode(imageNamed: "heart")
            heart1Image.size = (CGSize.init(width: 30, height: 30))
            heart1Image.position = CGPoint.init(x: -178, y: 394)
            scene?.addChild(heart1Image)
            
            heart2Image = SKSpriteNode(imageNamed: "heart")
            heart2Image.size = (CGSize.init(width: 30, height: 30))
            heart2Image.position = CGPoint.init(x: -152, y: 394)
            scene?.addChild(heart2Image )
            
            heart3Image = SKSpriteNode(imageNamed: "heart")
            heart3Image.size = (CGSize.init(width: 30, height: 30))
            heart3Image.position = CGPoint.init(x: -126, y: 394)
            scene?.addChild(heart3Image)
        }
        if totalLife <= 0 {
            print("totalLifewaszero")
            totalLife = 0
            runAd = "true"
            runPopUpAd = "true"
            print(runPopUpAd, "in level 10")
            removeAllChildrens()
            stopTimer()
            self.view?.presentScene(changeScene1)
            
            
            
        }
        
    }
    
    
    //    func createQuestion() {
    //        let question = SKSpriteNode(imageNamed: "Pvg7A1564968829")
    //        question.size = (CGSize.init(width: 375, height: 60))
    //        question.position = CGPoint.init(x: -0.632, y: -325.71)
    //        scene?.addChild(question)
    //
    //    }
    
    ////////////////////////////////////////////////////////////////////////EDIT BELOW FOR NEW LEVELS ////////////////////
    func removeAllChildrens() {
        player.removeFromParent()
        death.removeFromParent()
        death2.removeFromParent()
        death3.removeFromParent()
        heart1Image.removeFromParent()
        heart2Image.removeFromParent()
        heart3Image.removeFromParent()
        star1Image.removeFromParent()
        star2Image.removeFromParent()
        star3Image.removeFromParent()
        
        
        ////////////////////////////////////////////////////////////////////////EDIT ABOVE FOR NEW LEVELS ////////////////////
    }
    
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    //BUTTONS
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "hintHelp" && totalScores >= 50 {
                scoreSystem().callMe()
                let oneRevolution:SKAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: 3)
                if turn == 0 && totalScores >= 50 {
                    death.run(oneRevolution)
                   
                    scoreSystem().removeScorePurchasedLives()
                    scoreSystem().callMe()
                }
                if turn == 1 && totalScores >= 50 {
                    death2.run(oneRevolution)
                    
                    scoreSystem().removeScorePurchasedLives()
                    scoreSystem().callMe()
                }
                if turn == 2 && totalScores >= 50 {
                    death3.run(oneRevolution)
                  
                    scoreSystem().removeScorePurchasedLives()
                    scoreSystem().callMe()
                }
                turn = turn + 1
                
                
            } else if touchedNode.name == "endGame" {
                timer?.invalidate()
                timer = nil
                
                timeBool = false
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "mainID") as! mainView
                
                DispatchQueue.main.async {
                    self.getTopMostViewController()?.present(vc, animated: true, completion: nil)
                    
                }

                
            }
        }
    }
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    @objc func swipedRight(sender:UISwipeGestureRecognizer){
        let centerY = player.position.y
        let range = SKRange(lowerLimit: centerY, upperLimit: centerY)
        let constraint = SKConstraint.positionX(.init(), y: range)
        player.constraints = [constraint]
        if player.physicsBody?.velocity == CGVector.init(dx: 0, dy: 0) || player.physicsBody?.isResting == true {
            //            player.physicsBody?.applyImpulse(CGVector(dx: 30, dy: 0))
            //  player.physicsBody?.applyImpulse(CGVector.init(dx: 30, dy: 0))
            player.physicsBody?.velocity.dx = 500
//            swipedSound()
            swipe = swipe + 1
            removeInstruction()
            
        }
    }
    
    @objc func swipedLeft(sender:UISwipeGestureRecognizer){
        let centerY = player.position.y
        let range = SKRange(lowerLimit: centerY, upperLimit: centerY)
        let constraint = SKConstraint.positionX(.init(), y: range)
        player.constraints = [constraint]
        if player.physicsBody?.velocity == CGVector.init(dx: 0, dy: 0) || player.physicsBody?.isResting == true    {
            //           player.physicsBody?.applyImpulse(CGVector.init(dx: -30, dy: 0))
            player.physicsBody?.velocity.dx = -500
//            swipedSound()
            swipe = swipe + 1
            removeInstruction()
            
        }
    }
    @objc func swipedUp(sender:UISwipeGestureRecognizer){
        let centerX = player.position.x
        let range = SKRange(lowerLimit: centerX, upperLimit: centerX)
        let constraint = SKConstraint.positionX(range, y: .init())
        player.constraints = [constraint]
        if player.physicsBody?.velocity == CGVector.init(dx: 0, dy: 0) || player.physicsBody?.isResting == true  {
            
            //            player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 30))
            //     player.physicsBody?.applyImpulse(CGVector.init(dx: 0, dy: 30))
            player.physicsBody?.velocity.dy = 500
//            swipedSound()
            swipe = swipe + 1
            removeInstruction()
        }
    }
    @objc func swipedDown(sender:UISwipeGestureRecognizer){
        let centerX = player.position.x
        let range = SKRange(lowerLimit: centerX, upperLimit: centerX)
        let constraint = SKConstraint.positionX(range, y: .init())
        player.constraints = [constraint]
        
        if player.physicsBody?.velocity == CGVector.init(dx: 0, dy: 0) || player.physicsBody?.isResting == true {
            
            //      player.physicsBody?.applyImpulse(CGVector.init(dx: 0, dy: -30))
            player.physicsBody?.velocity.dy = -500
            
//            swipedSound()
            swipe = swipe + 1
            removeInstruction()
            
        }
    }
    //TIMER
    
    
    //STARS BS
    weak var timer:Timer?
    var timeLeft = 120
    
    
    func createStars()  {
        
        star1Image = SKSpriteNode(imageNamed: "star")
        star1Image.size = (CGSize.init(width: 25, height: 25))
        star1Image.position = CGPoint.init(x: -65, y: 394)
        scene?.addChild(star1Image)
        
        star2Image = SKSpriteNode(imageNamed: "star")
        star2Image.size = (CGSize.init(width: 25, height: 25))
        star2Image.position = CGPoint.init(x: -35, y: 394)
        scene?.addChild(star2Image)
        
        star3Image = SKSpriteNode(imageNamed: "star")
        star3Image.size = (CGSize.init(width: 25, height: 25))
        star3Image.position = CGPoint.init(x: -5, y: 394)
        scene?.addChild(star3Image)
        
        
    }
    
    
    @objc func onTimerFires() {
        
        timeLeft -= 1
        print("\(timeLeft) seconds left")
        label = self.childNode(withName: "scoreLabel") as! SKLabelNode
        label.text = ("\(timeLeft) seconds left")
        label1 = self.childNode(withName: "scoreLabel1") as! SKLabelNode
        label1.text = totalScore
        changeLabel()
        
        if timeLeft > 80 {
            score1 = 100
            totalHeartsToDisplay = 3
        }
        if timeLeft > 40 && timeLeft < 80 {
            score1 = 75
            star3Image.removeFromParent()
            totalHeartsToDisplay = 2
            
            
        }
        if timeLeft > 0 && timeLeft < 40 {
            score1 = 50
            star2Image.removeFromParent()
            totalHeartsToDisplay = 1
        }
        if timeLeft <= 0 {
            timer?.invalidate()
            timer = nil
            star1Image.removeFromParent()
            score1 = 0
            
        }
    }
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    //
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    //DEATH RECOGNIZER
    //DOG TEST
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        //VARIABLES AND SHIT
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        
        
        //SETTING UP THE CHECKING SHIT
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        } else {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        
        //CHECK NUMERO ONE
        
        
        if firstBody.categoryBitMask == 1 &&
            secondBody.categoryBitMask == 2 && letterOne == 1 {
            (secondBody.node!.removeFromParent())
            letterTwo = 2
            score = score + 500
            scoreSystem().addScore()
            scoreSystem().callMe()
            turn = turn + 1
        }
        
        //CHECK NUMERO TWO
        if firstBody.categoryBitMask == 1 &&
            secondBody.categoryBitMask == 4 && letterTwo == 2 {
            (secondBody.node!.removeFromParent())
            letterThree = 3
            score = score + 10
            scoreSystem().addScore()
            scoreSystem().callMe()
            turn = turn + 1
            
            
        } else if firstBody.categoryBitMask == 1 &&
            secondBody.categoryBitMask == 4 && letterTwo < 2 {
            
            scoreSystem().removeScore()
            scoreSystem().callMe()
            
            changeScene().changeLabel()
            
            lives().removeHeart()
            lives().callMe()
            stopTimer()
            removeAllChildrens()
            
            view?.presentScene(loseScene1)
            
            
        }
        
        
        //CHECK NUMERO THREE
        if firstBody.categoryBitMask == 1 &&
            secondBody.categoryBitMask == 6 && letterThree == 3 {
            (secondBody.node!.removeFromParent())
            score = score + 10
            if totalHeartsToDisplay == 3 {
                scoreSystem().addScoreThreeStar()
            }
            if totalHeartsToDisplay == 2 {
                scoreSystem().addScoreTwoStar()
            }
            if totalHeartsToDisplay == 1 {
                scoreSystem().addScoreOneStar()
            }
            scoreSystem().addScore()
            scoreSystem().callMe()
            stopTimer()
            removeAllChildrens()
            view?.presentScene(winScene)
            
        } else if firstBody.categoryBitMask == 1 &&
            secondBody.categoryBitMask == 6 && letterThree < 3 {
            
            scoreSystem().removeScore()
            scoreSystem().callMe()
            
            changeScene().changeLabel()
            
            lives().removeHeart()
            lives().callMe()
            stopTimer()
            removeAllChildrens()
            
            view?.presentScene(loseScene1)
            
            
        }
        
        
        
    }
    func changeLabel() {
        label1.text = String(totalScores)
        
    }
    
    func createWalls() {
        
        
    }
    
    func checkHeart() {
        //        if heart == 1 {
        //            heart3Image.removeFromParent()
        //            heart2Image.removeFromParent()
        //        }
        //        if heart == 2 {
        //          heart3Image.removeFromParent()
        //        }
        //        if heart == 3 {
        //
        //        }
        //        if heart == 0 {
        //           view?.presentScene(changeScenes)
        //
        //        }
    }
    
    
    
    //X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X//X
    //lives
    
    
    
    //        if heart1 == true && heart2 == true && heart3 == true {
    //            print("Good so far")
    //                } else if heart1 == true && heart2 == true && heart3 == false {
    //                    heart3Image.removeFromParent()
    //                    } else if heart1 == true && heart2 == false && heart3 == false{
    //                        heart3Image.removeFromParent()
    //                        heart2Image.removeFromParent()
    //                        } else if heart1 == false && heart2 == false && heart3 == false {
    //
    //
    //        }
    
    
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }
    
//    func swipedSound() {
//        if sfxSound == "true" {
//            let sound = Bundle.main.path(forResource: "swipeSound", ofType: "mp3")
//            do {
//                swipeSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//
//            } catch {
//                print(error)
//            }
//            swipeSound.play()
//
//        }
//    }
    
    func hintBlock() {
        if hint == true {
            
        }
    }
    
//    func deathedSound() {
//        if sfxSound == "true" {
//            let sound = Bundle.main.path(forResource: "deathSound", ofType: "mp3")
//            do {
//                deathSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//
//            } catch {
//                print(error)
//            }
//
//            deathSound.play()
//        }
//    }
    func createHint() {
        if hint == true {
            let label2 = self.childNode(withName: "questionLabel") as? SKLabelNode
            label2?.text = "MEOW"
            hint = false
        }
    }
    
    
    
}
