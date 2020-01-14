//
//  ViewController.swift
//  squareShrink
//
//  Created by komaldeep kaur on 2020-01-13.
//  Copyright © 2020 komaldeep kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         let mainViewHeight = view.frame.size.height
             let mainViewWidth = view.frame.size.width
             var myViewHeight = self.square.frame.size.height
             var myViewWidth = self.square.frame.size.width
             square.center = view.center
             square.backgroundColor = .red
             var timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
             { timer in
                   self.square.backgroundColor = .random()
             }
             expand()
             }
          
            
           func expand(){
             var timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true)
             { timer in
                  // self.myView.backgroundColor = .random()
                        print("Expand by\(timer)")
             self.square.frame.origin.x -= 5
             self.square.frame.origin.y -= 5
             self.square.frame.size.height += 10
             self.square.frame.size.width += 10
             if(self.square.frame.size.width == 390)
             {
               timer.invalidate()
               self.shrink()
             }
             }
             
           }
           func shrink(){
            var timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true)
            { timer in
              //self.myView.backgroundColor = .random()
                    print("Expand by\(timer)")
             self.square.frame.origin.x += 5
             self.square.frame.origin.y += 5
             self.square.frame.size.height -= 10
             self.square.frame.size.width -= 10
             if(self.square.frame.size.width == 50)
             {
                timer.invalidate()
                
               self.expand()
             }
           }
           }
         }
         extension UIColor {
           static func random() -> UIColor {
             func random() -> CGFloat { return .random(in:0...1) }
             return UIColor(red:  random(),
                     green: random(),
                     blue: random(),
                     alpha: 1.0)
           }
    }




