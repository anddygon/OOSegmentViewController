//
//  HomeViewController.swift
//  OOSegmentViewController
//
//  Created by lee on 16/6/28.
//  Copyright © 2016年 clearlove. All rights reserved.
//

import UIKit

class HomeViewController: OOSegmentViewController{

    
    required init?(coder aDecoder: NSCoder) {
        print(aDecoder)
        super.init(coder: aDecoder)
//        titles = [
//            "Unused",
//            "Expired",
//            "Used",
//            "Coupon Card"
//        ]
        images = [
            UIImage(named: "credit1")!,
            UIImage(named: "paypal1")!
        ]
        itemHeight = 27
        cursorMoveEffect = OOCursorLeftDockMoveEffect()
        controllers = [
            createController(),
            createController()
        ]
        cursorColor = UIColor.black
        titleMargin = 30
        pageIndex = 1
        cursorBottomMargin = 0
        cursorHeight = 1
        cursorColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(action(_:)))
    }
    
    func action(_ sender:UIButton) {
//        moveToControllerAtIndex(2,animated: false)
        let title = "what\(sender.tag)"
        sender.tag += 1
        titles += [title]
        controllers += [createController()]
        moveToControllerAtIndex(index: pageIndex)
    }
    
    
    func createController() -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = UIColor(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 1)
        return vc
    }

}
