//
//  Tela2ViewController.swift
//  CicloDeVidaApp
//
//  Created by Douglas Frari on 11/5/21.
//

import UIKit

class Tela2ViewController: UIViewController {

    @IBOutlet weak var labelEstaFeliz: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func estaFelizVersao2(_ sender: UISwitch) {
        
        // versao original usando IF/ELSE
        /*
        if sender.isOn {
            labelEstaFeliz.text = "Muito bem! 😘😀"
        } else {
            labelEstaFeliz.text = "Você está feliz?"
        }
         */
        
        // versao usando ternario
        labelEstaFeliz.text = sender.isOn ? "Muito bem! 😘😀" : "Você está feliz?"
    }    
    
    
    @IBAction func fecharTela(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
