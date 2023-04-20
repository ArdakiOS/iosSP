//
//  Messages.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import SwiftUI

struct Messages: View {
    
    @State var searchText : String
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBar(searchText: $searchText, ver: 20 ,hor: 25, cor: 10 )
                    .padding()
                List{
                    
                        NavigationLink {
                            DetailedMessage()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            messagesRow()
                        }

                    
                }.listStyle(.plain)
            }
            .navigationTitle("messages")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        NavigationLink {
                        Navigation()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        //
                    } label: {
                        Image("msgMenu")
                    }
                }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("msg1")
                }
            }
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages(searchText: "")
    }
}
