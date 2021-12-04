//
//  ViewController.swift
//  CocoapodExemplo
//
//  Created by Douglas Frari on 12/4/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        AF.request("https://httpbin.org/get").response { response in
//            debugPrint(response)
//        }
        
        AF.request("https://httpbin.org/get").responseJSON { json in
            print(json.result)
        }
    }


}

