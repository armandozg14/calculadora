//
//  ViewController.swift
//  calculadora
//
//  Created by Alumno on 8/18/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtfDinero: UITextField!
    @IBOutlet weak var sldPropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblMontoPropina: UILabel!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doChangeSlider(_ sender: Any) {
        
        let miString = "74.4"
        let miFloat = Float(miString)
        
        lblPorcentajePropina.text = "\(Int(sldPropina.value))%"
        let cuenta = Float(txtfDinero.text!) ??
        0.0
        let porcentajePropina = Float(Int (sldPropina.value))
        
        let propina = cuenta * porcentajePropina/100.0
        
        lblMontoPropina.text = String(format: "$ %.2f", propina)
        
        let cuentaTotal = propina+cuenta
        lblTotalConPropina.text = String(format: "$ %.2f", cuentaTotal)
    }
    
}

