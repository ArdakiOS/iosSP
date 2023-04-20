//
//  messagesRow.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import SwiftUI

struct messagesRow: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }
            
            VStack{
                HStack{
                    Text("Tungishbay")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Spacer()
                    Text("5 min ago")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("Check your final grades")
                        .font(.system(size: 14))
                    
                    Spacer()
                }
                
            }
        }.padding(.horizontal, 10)
        
    }
}

struct messagesRow_Previews: PreviewProvider {
    static var previews: some View {
        messagesRow()
    }
}
