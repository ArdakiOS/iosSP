//
//  Search.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 31.03.2023.
//

import SwiftUI

struct Search: View {
    @State var text = ""
    @StateObject var fetch = PostsFetch()
    var groups: [String] = ["CS News", "Chess Club", "Senior project club"]
    var body: some View {
        VStack{
            SearchBar(searchText: $text, ver: 5, hor: 5, cor: 5)
                .padding()
            
            
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(fetch.allPosts, id: \.self){ post in
                        
                        if(text.isEmpty){
                            postRow(post: post)
                                .padding(.bottom)
                            Divider()
                        }
                        else{
                            if(post.text.lowercased().contains(text.lowercased()) || post.last_name.lowercased().contains(text.lowercased()) || post.first_name.lowercased().contains(text.lowercased())){
                                postRow(post: post)
                                    .padding(.bottom)
                                Divider()
                            }
                        }
                        
                    }
                }.padding(.horizontal)
            }
        }
        .onAppear{
            getALL(groups: groups)
        }
        
    }
    
    func getALL(groups : [String]){
        
        for group in groups {
            let temp : [String] = group.components(separatedBy: " ")
            let clubName = makeUrl(temp: temp)
            fetch.fetchAll(club: clubName)
        }
    }
    
    func makeUrl(temp : [String]) -> String{
        var urlname = ""
        for tempname in temp{
            urlname += tempname + "%20"
        }
        return String(urlname.dropLast(3))
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
