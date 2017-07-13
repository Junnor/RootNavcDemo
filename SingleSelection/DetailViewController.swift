//
//  DetailViewController.swift
//  SingleSelection
//
//  Created by nyato喵特 on 2017/7/10.
//  Copyright © 2017年 nyato喵特. All rights reserved.
//

import UIKit
import RTRootNavigationController

class DetailViewController:  UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
            scrollView.contentOffset = CGPoint(x: 0, y: -64)
        }
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.navigationController?.navigationBar.barTintColor = UIColor.red
//        self.navigationController?.navigationBar.tintColor = UIColor.white
//    }
    
    
    @IBAction func toNext(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContentViewController")
        
        self.rt_navigationController.pushViewController(vc, animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
//
//
//    private var useDefaultImage = false
//    private var currentBarTintColor: UIColor!
//    private func naviBarTintColorWith(offsetY: CGFloat) {
//        if offsetY >= 0 {
//            let alpha = min(offsetY / 64, 1.0)
//            let color = UIColor(red: 31/255.0, green: 31/255.0, blue: 31/255.0, alpha: alpha)
//            
//            currentBarTintColor = color
//            
////            if offsetY >= 64 {
////                useDefaultImage = true
////                self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
////                self.navigationController?.navigationBar.shadowImage = nil
////            } else {
////                useDefaultImage = false
////                let image = UIImage.from(color: color)
////                self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
////                self.navigationController?.navigationBar.shadowImage = image
////            }
//            
//            let image = UIImage.from(color: color)
//            self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
//            self.navigationController?.navigationBar.shadowImage = image
//        }
//    }
//    
//    // set navigation bar
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offsetY = scrollView.contentOffset.y
//        
//        print("offsetY: \(offsetY)")
//        
//        // for navi bar
//        naviBarTintColorWith(offsetY: offsetY)
//        
//    }
}

extension UIImage {
    static func from(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
}


