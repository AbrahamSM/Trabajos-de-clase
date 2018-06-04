//
//  ViewController.swift
//  UserDefault v1
//
//  Created by macbookUser on 19/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var valores = UserDefaults.standard
    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
        
        if let info = valores.object(forKey: "informacion"){
            textBox.text = info as! String
            var cadenaMagica = info as! String
            if cadenaMagica == "segunda"{
                performSegue(withIdentifier: "segundaVista", sender: self)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("Ejecutando Segue")
        return true
    }


    @IBAction func guardarInfo(_ sender: UIButton) {
        
        let info = textBox.text
        
        if info != ""{
            valores.set(info, forKey: "informacion")
        }
        performSegue(withIdentifier: "terceraVista", sender: self)
        
    }
    
}

