//
//  ViewController.swift
//  FadeAnimation
//
//  Created by SHUBHAM AGARWAL on 14/03/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        gesture.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(gesture)
        
        let addGesture = UITapGestureRecognizer(target: self, action: #selector(addLabels))
        view.addGestureRecognizer(addGesture)
    }
    
    @objc func addLabels() {
        lbl1.transform = CGAffineTransform.identity
        lbl2.transform = CGAffineTransform.identity
        lbl1.alpha = 1
        lbl2.alpha = 1
    }
    
    @objc
    func onClickView() {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.lbl1.transform = CGAffineTransform(translationX: -25, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
                self.lbl1.alpha = 0
                self.lbl1.transform = self.lbl1.transform.translatedBy(x: 0, y: -200)
            }, completion: nil)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.lbl2.transform = CGAffineTransform(translationX: -25, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
                self.lbl2.alpha = 0
                self.lbl2.transform = self.lbl2.transform.translatedBy(x: 0, y: -200)
            }, completion: nil)
        }
        
    }


}

