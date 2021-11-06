//
//  ViewController.swift
//  CicloDeVidaApp
//
//  Created by Douglas Frari on 11/5/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func irParaTela2(_ sender: Any) {
        print("Ir para tela 2 (programaticamente)")
        performSegue(withIdentifier: "tela2", sender: nil)        
    }
    
    @IBAction func windTelaHome(segue: UIStoryboardSegue) {
        print("--> unwindTela1 (( segue para voltar para tela 1 )) <<--")
    }
}

