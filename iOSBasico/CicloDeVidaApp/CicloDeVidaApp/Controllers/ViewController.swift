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
        
        print("\(String(describing: self)) - viewDidLoad")
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(String(describing: self)) - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(String(describing: self)) - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(String(describing: self)) - viewWillDisappear")
    }
  
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(String(describing: self)) - viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        print("\(String(describing: self)) - didReceiveMemoryWarning")
    }
    

    @IBAction func irParaTela2(_ sender: Any) {
        print("Ir para tela 2 (programaticamente)")
        performSegue(withIdentifier: "tela2", sender: nil)        
    }
    
    @IBAction func windTelaHome(segue: UIStoryboardSegue) {
        print("--> unwindTela1 (( segue para voltar para tela 1 )) <<--")
    }
}

