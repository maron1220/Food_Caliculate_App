//
//  ViewController.swift
//  caliculate.calory
//
//  Created by 細川聖矢 on 2019/06/01.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }
    @IBOutlet weak var protext: UITextField!
    @IBOutlet weak var fattext: UITextField!
    @IBOutlet weak var carbotext: UITextField!
    
    @IBAction func calicubutton(_ sender: Any) {
        let Protein:String = protext.text!
        let Fat:String = fattext.text!
        let Carbo:String = carbotext.text!
        let Pnum:Double = Double(Protein)!
        let Fnum:Double = Double(Fat)!
        let Cnum:Double = Double(Carbo)!
        let Sum = Pnum * 3.5 + Fnum * 8.5 + Cnum * 3.5
        label.text = String(Sum)
        //最後にキーボードを閉じる
        carbotext.endEditing(true)
    }
    @IBOutlet weak var label: UILabel!
    
}

