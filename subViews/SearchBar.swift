//
//  SearchBar.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var ver : CGFloat = 0
    var hor : CGFloat = 0
    var cor : CGFloat = 0
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .font(.headline)
            
            TextField("Search in the feed", text: $searchText)
                .disableAutocorrection(true)
                .font(.system(size: 12))
                .fontWeight(.bold)
                
        }
        .padding(.horizontal, ver)
        .padding(.vertical, hor)
        .overlay(
            RoundedRectangle(cornerRadius: cor)
                .stroke(Color.black, lineWidth: 0.5)
                
        )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
