//
//  PostsFetch.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 16.03.2023.
//

import Foundation

class PostsFetch: ObservableObject{
    
    @Published var posts: [Posts] = []
    @Published var allPosts: [Posts] = []
    
    func fetch(club: String){
        guard let url = URL(string:"http://192.168.0.191:8080/posts/community/\(club)") else{
            print("FAIL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
                
            }
            
            do{
                let posts = try JSONDecoder().decode([Posts].self, from: data)
                DispatchQueue.main.async {
                    self?.posts = posts
                }
            }
            catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    func fetchAll(club: String){
        guard let url = URL(string:"http://192.168.0.191:8080/posts/community/\(club)") else{
            print("FAIL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
                
            }
            
            do{
                let posts = try JSONDecoder().decode([Posts].self, from: data)
                DispatchQueue.main.async {
                    self?.allPosts.append(contentsOf: posts)
                }
            }
            catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
