//
//  ImprimirViewController.swift
//  RegitroNotasFC
//
//  Created by macosfreddy on 9/24/20.
//  Copyright © 2020 macosfreddy. All rights reserved.
//

import UIKit

class ImprimirViewController: UIViewController {
    
    
    var Nombres: String=""
    var Curso: String=""
    var TotalPromedio:String=""
    
    
    @IBOutlet weak var tfNombres: UITextField!
    
    @IBOutlet weak var tfCurso: UITextField!
    
    @IBOutlet weak var tfTotalPromedio: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tfNombres.text=Nombres
        self.tfCurso.text=Curso
        self.tfTotalPromedio.text=TotalPromedio
        
    }
    

}
