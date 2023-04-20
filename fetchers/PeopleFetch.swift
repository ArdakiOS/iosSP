//
//  feedFetch.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 24.01.2023.
//

import Foundation

class PeopleFetch: ObservableObject{
    
    @Published var people: [People] = []
    
    func fetch(){
        guard let url = URL(string:"http://192.168.0.191:8080/people") else{
            print("FAIL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
                
            }
            
            do{
                let people = try JSONDecoder().decode([People].self, from: data)
                DispatchQueue.main.async {
                    self?.people = people
                }
            }
            catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
