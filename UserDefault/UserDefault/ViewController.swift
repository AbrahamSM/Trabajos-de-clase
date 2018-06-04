//
//  ViewController.swift
//  UserDefault
//
//  Created by macbookUser on 09/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    
    var valores = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
        
        if let info = valores.object(forKey: "informacion"){
            textBox.text = info as! String
            var cadenaMagica = info as! String
            if cadenaMagica == "segunda"{
                performSegue(withIdentifier: "segundaVista", sender: self)
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("Ejecutando el segue")
        return true
    }

    @IBAction func guargarInfo(_ sender: UIButton) {
        
        let info = textBox.text
        
        if info != ""{
            valores.set(info, forKey: "informacion")
        }
        
        performSegue(withIdentifier: "terceraVista", sender: self)
        
    }
    
}

