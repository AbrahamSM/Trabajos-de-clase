//
//  ViewController.swift
//  class 8
//
//  Created by macbookUser on 12/03/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var datos = ["Pedro", "Daniel", "Julio", "Parrita", "Ahyde", "Magno", "Pedro", "Daniel", "Julio", "Parrita", "Ahyde", "Magno", "Pedro", "Daniel", "Julio", "Parrita", "Ahyde", "Magno", "Pedro", "Daniel", "Julio", "Parrita", "Ahyde", "Magno"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return datos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = datos[indexPath.row]
        if cell.accessoryType.rawValue == 3{
            cell.accessoryType = .none
        }
        
        if indexPath.row % 2 == 0{
            cell.backgroundColor = .yellow
        }else{
            cell.backgroundColor = .green
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let miclosure = { (action: UIAlertAction) -> Void in
            print("Clicked")
        }
        
        let palomitaClosure = { (action: UIAlertAction) -> Void in
            let celda = tableView.cellForRow(at: indexPath)
//         celda?.accessoryType = .checkmark
            if let palomita = celda?.accessoryType.rawValue{
                if palomita == 3{
                    celda?.accessoryType = .none
                }else{
                    celda?.accessoryType = .checkmark
                }
            }
        }
        
        let optionMenu = UIAlertController(title: "Titulo", message: "Mensaje", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: palomitaClosure)
        
        let okAction = UIAlertAction(title: "Aceptar", style: .default, handler: miclosure)
        
        optionMenu.addAction(cancelAction)
        optionMenu.addAction(okAction)
        
        present(optionMenu, animated: true, completion: nil)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .blue
    }

    

}

