//
//  ViewController.swift
//  squareShrink
//
//  Created by komaldeep kaur on 2020-01-13.
//  Copyright © 2020 komaldeep kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var square: UIView!
     var speed = 0.1
    @IBOutlet var sliderLbl: UIView!
   
    @IBAction func slider(_ sender: UISlider) {
    
    switch sender.value
        {
             case 0:
                  speed = 1.2
                  print(speed)
                  break
                case 1:
                  speed = 1.0
                  print(speed)
                  break
                case 2:
                  speed = 0.8
                  break
                case 3:
                  speed = 0.6
                    break
                case 4:
                  speed = 0.4
                   
                default:
                  speed = 0.1
             }
    }
    var timer: Timer!
    var c = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCount.text = "\(c)"
        // Do any additional setup after loading the view.
//         let mainViewHeight = view.frame.size.height
//             let mainViewWidth = view.frame.size.width
//             var myViewHeight = self.square.frame.size.height
//             var myViewWidth = self.square.frame.size.width
             square.center = view.center
             square.backgroundColor = .red
             var timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
             { timer in
                   self.square.backgroundColor = .random()
             }
             expand()
             }
          
            
           func expand(){
             var timer = Timer.scheduledTimer(withTimeInterval: speed, repeats: true)
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
            
            self.c+=1
            lblCount.text = "\(c)"
            var timer = Timer.scheduledTimer(withTimeInterval: speed, repeats: true)
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




