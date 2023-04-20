//
//  message.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 30.03.2023.
//

import SwiftUI

struct message: View {
    @State var isSender: Bool
    @State var text : String = "Hello"
    var body: some View {
        if isSender{
            HStack{
                Image(systemName: "person.circle")
                    .font(.largeTitle)
                    .padding(.trailing, 10)
                VStack{
                    Text(text)
                        .foregroundColor(.white)
                        .padding(10)
                }.background(Color.black)
                    .cornerRadius(10)
                Spacer()
            }.padding()
        }
        else{
            HStack{
                Spacer()
                VStack{
                    Text(text)
                        .foregroundColor(.white)
                        .padding(10)
                }.background(Color.black)
                    .cornerRadius(10)
                Image(systemName: "person.circle")
                    .font(.largeTitle)
                    .padding(.trailing, 10)
            }.padding()
        }

    }
}

struct message_Previews: PreviewProvider {
    static var previews: some View {
        message(isSender: false)
    }
}
