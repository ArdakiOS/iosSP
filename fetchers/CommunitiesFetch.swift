//
//  CommunitiesFetch.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 06.04.2023.
//

import Foundation
class CommunitiesFetch: ObservableObject{
    
    @Published var comm: [communities] = []
    
    func fetch(){
        guard let url = URL(string:"http://192.168.0.191:8080/communities") else{
            print("FAIL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let community = try JSONDecoder().decode([communities].self, from: data)
                DispatchQueue.main.async {
                    self?.comm = community
                }
            }
            catch{
                print(error)
            }
        }
        
        print("HEHE \(comm)")
        
        task.resume()
    }
}
