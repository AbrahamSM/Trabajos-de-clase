//
//  ViewController.swift
//  TestFrame
//
//  Created by macbookUser on 23/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        setupLayout()
        
//        imageView.center.x += view.bounds.width / 2
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.center.x = self.view.bounds.width - 50
//        }

        UIView.animate(withDuration: 1.5, delay: 0.4, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
            self.imageView.center.x = self.view.bounds.width - 50
            self.imageView.alpha = 0.1
            self.imageView.transform.rotated(by: 1.0)
        }, completion: nil)
        
//        self.imageView.center.y += 30
//        self.imageView.alpha = 0.1
//
//        UIView.animate(withDuration: 1.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
//            self.imageView.center.y += 30.0
//            self.imageView.alpha = 1.0
//        }, completion: nil)
    }

    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "blackwatch")
        iv.contentMode = .scaleAspectFill
        //iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        
        return iv
    }()
    
    func setupLayout(){
        view.addSubview(imageView)
        
        imageView.frame = CGRect(x: 0, y: 200, width: 150, height: 150)
        //imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    }


}






//Recursos de sketch

