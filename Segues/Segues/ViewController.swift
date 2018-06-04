//
//  ViewController.swift
//  Segues
//
//  Created by macbookUser on 21/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondViewSegue"{
            let destinoController = segue.destination as! SecondViewController
            
            destinoController.informacion = "Esta es la info"
        }
    }

}

