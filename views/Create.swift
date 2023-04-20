//
//  Create.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 30.03.2023.
//

import SwiftUI

struct Create: View {
    @State var text = ""
    @Binding var selectedTab : Tab
    var body: some View {
        
            VStack{
                HStack{
                    Button {
                        selectedTab = .Home
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Post")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                            .background(
                                Capsule()
                                    .fill(Color(red: 225/255, green: 70/255, blue: 124/255))
                            )
                    }
                }.padding(.horizontal)
                HStack{
                    Image(systemName: "person.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                    
                    Button {
                        //
                    } label: {
                        Text("PickYourFeed")
                            .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .font(.system(size: 10))
                            .frame(width: 120, height: 30)
                            .background(
                                Capsule()
                                    .stroke(Color(red: 225/255, green: 70/255, blue: 124/255), lineWidth: 1)
                            )
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
                TextField("What do you want to share about?", text: $text)
                    .border(Color.white)
                    .padding()
                    .foregroundColor(.black)
                
                Spacer()
                HStack{
                    Image(systemName: "globe.europe.africa.fill")
                    Text("Everyone can reply")
                    Spacer()
                }
                .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                .padding(.horizontal)
                Divider()
                    .frame(minHeight: 1)
                    .background(Color.black)
                
                HStack{
                    Button {
                        //
                    } label: {
                        Image(systemName: "folder")
                            .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                            .font(.system(size: 22))
                    }
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "doc")
                            .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                            .font(.system(size: 22))
                    }
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "link")
                            .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                            .font(.system(size: 22))
                    }
                    Spacer()
                }
                .ignoresSafeArea(.keyboard, edges: .bottom)
                .padding(.horizontal)
            
        }
        
        
    }
}

struct Create_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
