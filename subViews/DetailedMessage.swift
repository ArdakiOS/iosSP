//
//  DetailedMessage.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import SwiftUI

struct DetailedMessage: View {
    @State var msg : String = ""
    @State var mymsg: [String] = []
    @State var sendermsg: [String] = ["Hello", "How are you?", "Check your final grades"]
    var body: some View {
        NavigationView(){
            VStack{
                HStack{
                    NavigationLink {
                        Messages(searchText: "")
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .foregroundColor(.black)
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("Tungishbay")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                        Text("5 Minutes ago")
                            .font(.system(size: 8))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .font(.title)
                }
                .padding()
                Divider()
                    .frame(minHeight: 1)
                    .background(Color.black)
                VStack{
                    Spacer()
                    ForEach(sendermsg, id: \.self){text in
                            message(isSender: true, text: text)
                    }
                    ForEach(mymsg, id: \.self){text in
                            message(isSender: false, text: text)
                    }
                }
                
                
                HStack{
                    TextField("Write a message...", text: $msg)
                        .foregroundColor(.black)
                    
                    Image(systemName: msg.isEmpty ? "plus" :"paperplane.fill")
                        .onTapGesture {
                            if(msg.isEmpty){
                                //
                            }else{
                                withAnimation(.easeIn(duration: 0.5)){
                                    mymsg.append(msg)
                                    msg = ""
                                }
                            }
                        }
                    
                }
                .padding()
                .background(Color(hue: 1.0, saturation: 0.015, brightness: 0.94))
                
                
            }
        }
    }
    
}

struct DetailedMessage_Previews: PreviewProvider {
    static var previews: some View {
        DetailedMessage()
    }
}
