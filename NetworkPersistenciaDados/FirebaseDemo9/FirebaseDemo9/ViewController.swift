//
//  ViewController.swift
//  FirebaseDemo9
//
//  Created by Douglas Frari on 12/18/21.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
    }


    @IBAction func signIn(_ sender: Any) {
        
        
    }
}

