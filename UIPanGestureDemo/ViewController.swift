//
//  ViewController.swift
//  UIPanGestureDemo
//
//  Created by Raghavendra Dattawad on 9/20/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  /// Pangesture Def ///
    
    
/// A pan gesture occurs any time the user moves one or more fingers around the screen. A screen-edge pan gesture is a specialized pan gesture that originates from the edge of the screen.
    
   
  //  Use pan gesture recognizers for tasks that require you to track the movement of the user’s fingers onscreen. You might use a pan gesture recognizer to drag objects around in your interface or update their appearance based on the position of the user’s finger. Pan gestures are continuous, so your action method is called whenever the touch information changes, giving you a chance to update your content.
    
    
    
    @IBOutlet weak var viewDrag: UIView!
    var panGesture  = UIPanGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        panGesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.draggedView(_:)))
        viewDrag.isUserInteractionEnabled = true
        viewDrag.addGestureRecognizer(panGesture)
    
    }

    @objc func draggedView(_ sender:UIPanGestureRecognizer){
        
        print("callng pan gesture")
        
        self.view.bringSubview(toFront: viewDrag)
        let translation = sender.translation(in: self.view)
        viewDrag.center = CGPoint(x: viewDrag.center.x + translation.x, y: viewDrag.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

