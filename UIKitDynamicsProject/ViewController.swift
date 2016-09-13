//
//  ViewController.swift
//  UIKitDynamicsProject
//
//  Created by Nicholas L Caceres on 9/7/16.
//  Copyright © 2016 Nicholas L Caceres. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    
    var animator = UIDynamicAnimator()
    let gravityBehavior = UIGravityBehavior()
    let collisionBehavior = UICollisionBehavior()
    let dynamicItemBehavior = UIDynamicItemBehavior()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animator = UIDynamicAnimator(referenceView: self.view)
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        dynamicItemBehavior.elasticity = 0.6
        animator.addBehavior(gravityBehavior)
        animator.addBehavior(collisionBehavior)
        animator.addBehavior(dynamicItemBehavior)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createDropTapped(sender: UIButton) {
        let ballXValue = Int(arc4random_uniform(176) + 25)
        let newBallView = UIView(frame: CGRect(x: ballXValue, y: 40, width: 50, height: 50))
        newBallView.layer.cornerRadius = 25
        newBallView.backgroundColor = UIColor.redColor()
        self.view.addSubview(newBallView)
        gravityBehavior.addItem(newBallView)
        collisionBehavior.addItem(newBallView)
        dynamicItemBehavior.addItem(newBallView)
        NSLog("New ball coming on in at \(ballXValue)")
    }
    

}

