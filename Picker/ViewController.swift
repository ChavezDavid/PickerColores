//
//  ViewController.swift
//  Picker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let colores = ["Rojo", "Naranja", "Amarillo", "Verde", "Azul", "Morado", "Rosa", "Negro", "Blanco"]
    
    @IBOutlet weak var imgImagen: UIImageView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row{
        case 0 : view.backgroundColor = UIColor.red
            imgImagen.image=#imageLiteral(resourceName: "Rojo_2_00023")
        case 1 : view.backgroundColor = UIColor.orange
            imgImagen.image=#imageLiteral(resourceName: "Naranja_2_00023")
        case 2 : view.backgroundColor = UIColor.yellow
            imgImagen.image=#imageLiteral(resourceName: "Amarillo_2_00023")
        case 3 : view.backgroundColor = UIColor.green
            imgImagen.image=#imageLiteral(resourceName: "Verde_2_00023")
        case 4 : view.backgroundColor = UIColor.blue
            imgImagen.image=#imageLiteral(resourceName: "Azul_2_00023")
        case 5 : view.backgroundColor = UIColor(red: 0.6, green: 0, blue: 1, alpha: 1)
            imgImagen.image=#imageLiteral(resourceName: "Morado_2_00023")
        case 6 : view.backgroundColor = UIColor(red: 1, green: 0, blue: 0.5, alpha: 1)
            imgImagen.image=#imageLiteral(resourceName: "Rosa_2_00023")
        case 7 : view.backgroundColor = UIColor.black
            imgImagen.image=#imageLiteral(resourceName: "Negro_2_00023")
        case 8 : view.backgroundColor = UIColor.white
            imgImagen.image=#imageLiteral(resourceName: "Blanco_2_00023")
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

