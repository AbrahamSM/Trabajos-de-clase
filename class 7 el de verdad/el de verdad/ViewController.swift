//
//  ViewController.swift
//  el de verdad
//
//  Created by macbookUser on 26/02/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var numerotf: UITextField!
    @IBOutlet weak var botoncito: UIButton!
    @IBOutlet weak var resultadolabel: UILabel!
    
    @IBAction func click(_ sender: Any) {
        
        if let dato = numerotf.text{
            if let numero = Int(dato){
                resultadolabel.text = "\(numero + 1)"
            }else{
                resultadolabel.text = "Un numero porfavor"
            }
        }else{
            resultadolabel.text = "Un numero"
        }
    }
}

