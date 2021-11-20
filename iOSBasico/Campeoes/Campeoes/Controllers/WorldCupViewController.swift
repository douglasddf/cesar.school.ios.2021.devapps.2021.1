//
//  WorldCupViewController.swift
//  Campeoes
//
//  Created by Douglas Frari on 11/6/21.
//

import UIKit

class WorldCupViewController: UIViewController {

    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var worldCup: WorldCup?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let worldCup = worldCup {
            title = "WorldCup \(worldCup.year)"
            
            ivWinner.image = UIImage(named: worldCup.winner)
            ivVice.image = UIImage(named: worldCup.vice)
            lbScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
            lbWinner.text = worldCup.winner
            lbVice.text = worldCup.vice
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // fim da classe


extension WorldCupViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // total de secoes disponiveis
        return worldCup?.matches.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // numero de linhas para a secao
        return worldCup?.matches[section].games.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        
        // recuperando o Game que se encontra em algum Match (oitavas de final, quartas, semi...)
        if let match = worldCup?.matches[indexPath.section] {
            let game = match.games[indexPath.row]
            cell.preparar(comGame: game)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // opcional: obter um nome para secao
        
        let match = worldCup?.matches[section]
        
        return match?.stage
    }
    
}
