//
//  SecondViewController.swift
//  Segues
//
//  Created by macbookUser on 21/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    @IBOutlet weak var etiqueta: UILabel!
    
    var informacion: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        self.title = "Segunda vista"
       
        etiqueta.text = informacion
        
    }
    
}
