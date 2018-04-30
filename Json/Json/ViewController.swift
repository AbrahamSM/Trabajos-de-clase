//
//  ViewController.swift
//  Json
//
//  Created by macbookUser on 30/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        getTracks()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getTracks(){
        let url = "http://itunes.apple.com/search?term=u2"
        Alamofire.request(url).responseData { (dataResponse) in
            if let error = dataResponse.error{
                print("Hay un error", error)
            }
            
            guard let data = dataResponse.data else { return }
            let testString = String(data: data, encoding: .utf8 )
            print(testString)
            
        }
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

