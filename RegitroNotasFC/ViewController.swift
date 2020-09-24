//
//  ViewController.swift
//  RegitroNotasFC
//
//  Created by macosfreddy on 9/24/20.
//  Copyright © 2020 macosfreddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfNombres: UITextField!
    
    @IBOutlet weak var tfCurso: UITextField!
    
    @IBOutlet weak var tfNota1: UITextField!
    
    @IBOutlet weak var tfNota2: UITextField!
    
    @IBOutlet weak var tfNota3: UITextField!
    
    @IBOutlet weak var tfNota4: UITextField!
    
    @IBOutlet weak var tfPromedio: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnCalcular(_ sender: Any)
    {
        self.calcularPromedio()
    }
    
    
    @IBAction func btnImprimir(_ sender: Any) {
       
        let oStoryBoard: UIStoryboard=UIStoryboard(name:"Main",bundle:nil)
        
        //instanciar controlador con ID llamado viewImpresion
        let oPantallaImpresion=oStoryBoard.instantiateViewController(withIdentifier:"viewImprimir") as! ImprimirViewController
        
        //asignar instancia de variables
        oPantallaImpresion.Nombres = tfNombres.text!
        oPantallaImpresion.Curso = tfCurso.text!
        
        oPantallaImpresion.TotalPromedio=tfPromedio.text!
        
        self.present(oPantallaImpresion, animated: true, completion:nil)
        
    }
    
    //metodo para calcular Precio
    func calcularPromedio(){
        var Nota1: Double=0.0
        var Nota2: Double=0.0
        var Nota3: Double=0.0
        var Nota4: Double=0.0
        var Promedio: Double=0.0
       
        
        //asignar valores no nulos
        Nota1=Double(tfNota1.text ?? "") ?? 0
        Nota2=Double(tfNota2.text ?? "") ?? 0
        Nota3=Double(tfNota3.text ?? "") ?? 0
        Nota4=Double(tfNota4.text ?? "") ?? 0
        Promedio=Double(tfPromedio.text ?? "") ?? 0
        
        //asignar operacion
        Promedio=(Nota1+Nota2+Nota3+Nota4)/4
        tfPromedio.text=String(Promedio)
        mostrarMensaje(apPromedio:Promedio)
        
        
    }
    func mostrarMensaje(apPromedio:Double){
        var Mensaje: String=""
        if apPromedio<12.5
        {
            Mensaje="Desaprobado"
        }
        else if apPromedio>=12.5 && apPromedio<=20
        {
            Mensaje="Aprobado"
        }
        let alert=UIAlertController(title:"Validacion de Notas",
                                    message:"estado: \(Mensaje)",
            preferredStyle:UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title:"Aceptar",style:UIAlertAction.Style.default,handler:nil))
        self.present(alert,animated: true, completion: nil)
        
        
    }
   
    
    /*
    
*/

}

