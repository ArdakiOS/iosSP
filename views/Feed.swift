//
//  Feed.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 18.01.2023.
//

import SwiftUI

struct Feed: View {
    @StateObject var fetch = PostsFetch()
    var groups: [String] = ["CS News", "Chess Club", "Senior project club"]
    @State var searchText = ""
    @State var newPost = false
    @State var clubName = "CS%20News"
    @State var selected = "CS News"
    @StateObject var commsFetch = CommunitiesFetch()
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach((groups), id: \.self){name in
                        Button {
                            withAnimation(.easeIn(duration: 0.1)){
                                selected = name
                            }
                            let temp : [String] = name.components(separatedBy: " ")
                            clubName = makeUrl(temp: temp)
                            fetch.fetch(club: clubName)
                        } label: {
                            Text(selected == name ? "\(name)" : "\(name)")
                                .foregroundColor(selected == name ? Color(red: 225/255, green: 70/255, blue: 124/255) : .gray)
                                .scaleEffect(selected == name ? 1.15 : 1)
                                .font(.caption)
                                .fontWeight(.bold)
                                .frame(width: 106, height: 30)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(selected == name ? Color(red: 225/255, green: 70/255, blue: 124/255) : Color.black, lineWidth: 1)
                                )
                        }
                    }
                }.padding()
            }
            
//            ScrollView(.horizontal,showsIndicators: false){
//                HStack{
//                    stories(seen: false)
//                        .padding(.horizontal, 9)
//                    stories(seen: false)
//                    stories(seen: false)
//                        .padding(.horizontal, 9)
//                    stories(seen: false)
//                    stories(seen: false)
//                        .padding(.horizontal, 9)
//                    stories(seen: false)
//
//                    Spacer()
//                }.padding(.horizontal)
//                    .padding(.bottom)
//
//            }
            
            
            //            SearchBar(searchText: $searchText, ver: 20, hor: 5, cor: 5)
            //                .padding(.horizontal)
            //                .padding(.top)
            ZStack{
                ScrollView(showsIndicators: false){
                    LazyVStack{
                        ForEach(fetch.posts, id: \.self){ post in
                            postRow(post: post)
                                .padding(.bottom)
                            Divider()
                        }
                    }
                }
                .padding()
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
                .onAppear {
                    commsFetch.fetch()
                    fetch.fetch(club: clubName)
                }
                
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button {
                            newPost = true
                        } label: {
                            Image("NewPost")
                        }
                        
                    }
                }.padding()
                
            }
            
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


struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
