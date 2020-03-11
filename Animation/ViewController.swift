//
//  ViewController.swift
//  Animation
//
//  Created by MacHD on 27/09/19.
//  Copyright © 2019 MacHD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Animation1: NSLayoutConstraint!
    @IBOutlet weak var Animation2: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animation1.constant -= self.view.bounds.width
        Animation2.constant -= self.view.bounds.width
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Bebounce(_ sender: UIButton) {
        let bounds = sender.bounds
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
            sender.bounds = CGRect(x: bounds.origin.x-60, y: bounds.origin.y, width: bounds.size.width+100, height: bounds.size.height+5)
        }) { (success:Bool) in
            UIView.animate(withDuration: 1, animations: {
                sender.bounds = bounds
            })
        }
    }
    
    
    @IBAction func gotolist(_ sender: Any) {
        let obj = storyboard?.instantiateViewController(withIdentifier: "ListANimationTableView") as! ListANimationTableView
        self.navigationController?.pushViewController(obj, animated: true)
    }
    
    var onceAnimate = false
    override func viewDidAppear(_ animated: Bool) {
        if !onceAnimate{
            UIView.animate(withDuration: 1, delay: 0.5, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.Animation1.constant += self.view.bounds.width
             self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.5, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.Animation2.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
            onceAnimate = true
        }
    }
}

