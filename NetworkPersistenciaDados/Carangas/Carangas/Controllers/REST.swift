    //
    //  REST.swift
    //  Carangas
    //
    //  Created by Douglas Frari on 12/17/21.
    //  Copyright © 2021 Eric Brito. All rights reserved.
    //

import Foundation


enum CarError {
    case url
    case taskError(error: Error?)
    case noResponse
    case noData
    case responseStatusCode(code: Int)
    case invalidJSON
}

class REST {
    
    private static let basePath = "https://carangas.herokuapp.com/cars"
    
    
    
    private static let session = URLSession(configuration: configuration)
    
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = true
        config.httpAdditionalHeaders = ["Content-Type":"application/json"]
        config.timeoutIntervalForRequest = 15.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    
    static func loadCars(onComplete: @escaping ([Car]) -> Void, onError: @escaping (CarError) -> Void) {
        
        guard let url = URL(string: basePath) else {
            onError(.url)
            return
        }
        
        session.dataTask(with: url) { (data, response, error) in
            // a resposta chegara aqui assincrona apos o servidor responder ou quando ocorrer algum erro
            
                // 1
            if error == nil {
                    // 2
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                
                if response.statusCode == 200 {
                    
                    // servidor respondeu com sucesso :)
                    // 3
                    
                    // obter o valor de data
                    guard let data = data else {
                        onError(.noData)
                        return
                    }
                    
                    do {
                        let cars = try JSONDecoder().decode([Car].self, from: data)
                        onComplete(cars)
                        
                    } catch {
                        // algum erro ocorreu com os dados                        
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                    
                } else {
                    print("Algum status inválido(-> \(response.statusCode) <-) pelo servidor!! ")
                    onError(.responseStatusCode(code: response.statusCode))
                }
                
            } else {
                print(error.debugDescription)
                onError(.taskError(error: error))
            }
            
        }.resume()
        
    }
    
    
    static func save(car: Car, onComplete: @escaping (Bool) -> Void ) {
            // 1
        guard let url = URL(string: basePath) else {
            onComplete(false)
            return
        }
        
            // 2 - metodo POST precisa ser setado na URLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
            // 3 - transformar Objeto para JSON para enviar na requisito
            // transformar objeto para um JSON, processo contrario do decoder -> Encoder
        
        
        guard let jsonData = try? JSONEncoder().encode(car) else {
            onComplete(false)
            return
        }
        request.httpBody = jsonData

        
        // 4 - requisição propriamente dita como uma CLOSURE
        session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
                // 5 verifica resposta do servidor e retorna SUCESSO
            if error == nil {
                
                    // verificar e desembrulhar em uma unica vez
                guard let response = response as? HTTPURLResponse, response.statusCode == 200, let _ = data else {
                    onComplete(false)
                    return
                }
                
                    // sucesso
                onComplete(true)
                
            } else {
                onComplete(false)
            }
            
            
        }.resume()

    }
}
