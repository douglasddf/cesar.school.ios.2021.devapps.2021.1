//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Douglas Frari on 12/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelExemplo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if UserDefaults.standard.string(forKey: "userNameKey") == nil {
            // criando um valor associado a uma chave
            print("criou a chave pela primeira vez!")
            UserDefaults.standard.set("Coding Explorer", forKey: "userNameKey")
        }
        
        
    }


    @IBAction func removendoValor(_ sender: Any) {
        print("removendo valor persistido")
        //UserDefaults.standard.set(nil, forKey: "userNameKey")
        UserDefaults.standard.removeObject(forKey: "userNameKey")
    }
    
    
    @IBAction func recuperandoValor(_ sender: Any) {
        
        let valorRecuperado = UserDefaults.standard.string(forKey: "userNameKey")
        print(valorRecuperado ?? "nao recuperou ainda porque nao tem valor")
        
        labelExemplo.text = valorRecuperado
    }
}

