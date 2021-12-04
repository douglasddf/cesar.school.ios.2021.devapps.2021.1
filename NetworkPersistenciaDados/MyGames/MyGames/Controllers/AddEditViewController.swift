//
//  AddEditViewController.swift
//  MyGames
//
//  Created by Douglas Frari on 12/3/21.
//

import UIKit

class AddEditViewController: UIViewController {

    
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Actions
    
    @IBAction func AddEditCover(_ sender: UIButton) {
            // para adicionar uma imagem da biblioteca
        print("obter uma imagem da galeria")
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
            // acao salvar novo ou editar existente
        print("SALVAR")
    }

}
