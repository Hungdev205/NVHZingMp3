//
//  ViewController.swift
//  NVHZingMp3
//
//  Created by Hùng Nguyễn  on 6/28/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img_logo: UIImageView!
    @IBOutlet weak var lbl_text: UILabel!
    @IBOutlet weak var lbl_myName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo!.alpha = 0
        lbl_text!.alpha = 0
        lbl_myName!.alpha = 0
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        UIView.animateWithDuration(3, animations: {
//            self.img_logo.alpha = 1
//        }) { (true) in
//            UIView.animateWithDuration(3, animations: {
//                
//                self.lbl_text.center = CGPointMake(self.img_logo.center.x, 100)
//                self.lbl_text.alpha = 0.85
//                
//                }, completion: { (true) in
//                    
//                    UIView.animateWithDuration(3, animations: {
//                        self.lbl_myName.textColor = UIColor.blueColor()
//                        self.lbl_myName!.center = CGPointMake(self.img_logo!.center.x, 450)
//                        self.lbl_myName!.alpha = 1
//                        }, completion: nil)
//            })
//        }
        
        UIView.animateWithDuration(3, animations: {
            self.img_logo.alpha = 1
        }) {(finished) in
            UIView.animateWithDuration(3, animations: { 
                self.lbl_text.center = CGPointMake(self.img_logo.center.x, 100)
                self.lbl_text.alpha = 0.85
            }) {(finished) in
                UIView.animateWithDuration(3, animations: {
                                            self.lbl_myName.textColor = UIColor.blueColor()
                                            self.lbl_myName!.center = CGPointMake(self.img_logo!.center.x, 450)
                                            self.lbl_myName!.alpha = 1
                })
            }
 
        }
    }

    
    // Or maybe write 2 func
    
    //    func animation1() -> Void {
    //        UIView.animateWithDuration(4, animations: {
    //
    //            self.img_logo!.alpha = 1
    //
    //        }) { (finished) in
    //
    //            UIView.animateWithDuration(3, animations: {
    //
    //                self.lbl_text!.center = CGPointMake(self.img_logo!.center.x, 100)
    //
    //                self.lbl_text!.alpha = 0.85
    //
    //            })
    //
    //        }
    //
    //    }
    //
    //    func animation2() -> Void {
    //        UIView.animateWithDuration(3, animations: {
    //            self.lbl_myName.text = " HùngNguyễn "
    //            self.lbl_myName.textColor = UIColor.blueColor()
    //            self.lbl_myName!.alpha = 0
    //
    //        }) { (finished) in
    //                UIView.animateWithDuration(3, animations: {
    //
    //                self.lbl_myName!.center = CGPointMake(self.img_logo!.center.x, 500)
    //                self.lbl_myName!.alpha = 1
    //
    //            })
    //
    //        }
    //
    //    }
    
}



