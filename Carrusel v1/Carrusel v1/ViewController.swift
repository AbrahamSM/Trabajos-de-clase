//
//  ViewController.swift
//  Carrusel v1
//
//  Created by macbookUser on 18/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    let etiqueta : UILabel = {
        var label = UILabel()
        label.text = "Esto es un Texto"
        label.font = UIFont.systemFont(ofSize: 26)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let boton : UIButton = {
        var btn = UIButton(type: .system)
        btn.setTitle("Click", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.setTitleColor(.white , for: .normal)
        btn.addTarget(self, action: #selector(testFunc), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        view.addSubview(etiqueta)
        
        etiqueta.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        etiqueta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(boton)
        
        boton.topAnchor.constraint(equalTo: etiqueta.bottomAnchor, constant: 50).isActive = true
        boton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func testFunc(){
        print("Click")
    }

}

