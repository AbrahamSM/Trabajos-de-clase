//
//  ViewController.swift
//  Autentificacion login user
//
//  Created by macbookUser on 04/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var users: [User] = [
        User(firstname: "Pedro", lastname: "Bb", username: "peter", password: "1234"),
        User(firstname: "Jorge", lastname: "Parra", username: "parrita", password: "abcd")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func login(_ sender: UIButton) {
        
        var validate: Bool = true
        
        if let username = userName.text, let password = password.text{
            
            for user in users{
                if username == user.username, password == user.password{
                    print("Usuario validado")
                    shouldPerformSegue(withIdentifier: "nextSegue", sender: self)
                    break
                }else{
                    validate = false
                }
            }
        }
        if !validate{
            showError()
        }
        
        userName.becomeFirstResponder()
        password.resignFirstResponder()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextSegue"{
            print("Ejecutando next segue")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "nextSegue"{
            return true
        }else{
            return false
        }
    }
    
    func showError(){
        let errorAlert = UIAlertController(title: "Error", message: "Sus datos no son correctos", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        errorAlert.addAction(okAction)
        present(errorAlert, animated: true, completion: nil)
    }
}

