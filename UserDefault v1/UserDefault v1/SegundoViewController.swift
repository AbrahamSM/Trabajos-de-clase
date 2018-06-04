//
//  SegundoViewController.swift
//  UserDefault v1
//
//  Created by macbookUser on 19/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.title = "Segunda Vista"

        // Do any additional setup after loading the view.
    }

    @IBAction func logout(_ sender: UIButton) {
        
        UserDefaults.standard.set("", forKey: "information")
        navigationController?.popViewController(animated: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
