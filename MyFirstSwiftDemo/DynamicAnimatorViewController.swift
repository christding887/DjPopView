//
//  DynamicAnimatorViewController.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/14.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import UIKit

class DynamicAnimatorViewController: UIViewController {
    @IBOutlet var referenceView: UIView! {
        didSet {
            if let referenceView = referenceView {
                animator = UIDynamicAnimator(referenceView: referenceView)
            }
        }
    }
    
    @IBOutlet weak var targetView: UIView! {
        didSet {
            if let targetView = targetView {
                self.panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(DynamicAnimatorViewController.handleGesture(_:)))
                targetView.addGestureRecognizer(self.panGestureRecognizer)
            }
        }
        
    }
    @IBOutlet open weak var delegate : NSObject? // Should really be DragDropBehaviorDelegate but to workaround forming connection issue with protocols
    
    // MARK: UIDynamicAnimator
    fileprivate var animator : UIDynamicAnimator!
    fileprivate var attachmentBehavior : UIAttachmentBehavior!
    fileprivate var gravityBehaviour : UIGravityBehavior!
    fileprivate var snapBehavior : UISnapBehavior!
    open fileprivate(set) var panGestureRecognizer : UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        func handleGesture(_ sender: AnyObject)
        {
            let location = sender.location(in: referenceView)
            let boxLocation = sender.location(in: targetView)
            
            if sender.state == UIGestureRecognizerState.began {
                if let snap = snapBehavior {
                    animator.removeBehavior(snap)
                }
                
                let centerOffset = UIOffsetMake(boxLocation.x - targetView.bounds.midX, boxLocation.y - targetView.bounds.midY);
                attachmentBehavior = UIAttachmentBehavior(item: targetView, offsetFromCenter: centerOffset, attachedToAnchor: location)
                attachmentBehavior.frequency = 0
                
                animator.addBehavior(attachmentBehavior)
            }
            else if sender.state == UIGestureRecognizerState.changed {
                attachmentBehavior.anchorPoint = location
            }
            else if sender.state == UIGestureRecognizerState.ended {
                animator.removeBehavior(attachmentBehavior)
                
                snapBehavior = UISnapBehavior(item: targetView, snapTo: referenceView.center)
                animator.addBehavior(snapBehavior)
                
                let translation = sender.translation(in: referenceView)
                if translation.y > 100 {
                    animator.removeAllBehaviors()
                    
                    let gravity = UIGravityBehavior(items: [targetView])
                    gravity.gravityDirection = CGVector(dx: 0, dy: 10)
                    animator.addBehavior(gravity)
                    //                DispatchQueue(label: "after").asyncAfter(deadline: .now(), execute: {
                    //                    self.delegate as? DragDropBehaviorDelegate?.dragDropBehavior(self, viewDidDrop: self.targetView)
                    //
                    //                })
                    
                }
            }
            
            
            // Do any additional setup after loading the view.
    }
        
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
