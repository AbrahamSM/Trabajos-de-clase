//
//  ViewController.swift
//  TestAlumnos
//
//  Created by Germán Santos Jaimes on 2/26/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botoncito: UIButton!
    @IBOutlet weak var numeroTF: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }


    @IBAction func btnClick(_ sender: Any) {
        
        if let dato = numeroTF.text{
            if let numero = Int(dato){
                resultadoLabel.text = "\(numero + 1)"
            }else{
                resultadoLabel.text = "Un numero por favor"
            }
        }else{
            resultadoLabel.text = "Un numero"
        }
        
    }
    
}

