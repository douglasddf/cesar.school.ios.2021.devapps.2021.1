//
//  Match.swift
//  Campeoes
//
//  Created by Douglas Frari on 11/6/21.
//

import Foundation


struct Match: Codable {
    let stage: String // fases: (oitavas, quartas, semifinais, finais)
    let games: [Game]
}
