//
//  Auth.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 19.01.2023.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var pass = ""
    @State var first = true
    var body: some View {
        NavigationView(){
            VStack{
                Text("brand name")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.title)
                
                Spacer()
                
                VStack{
                    Text("Sign in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    
                    TextField("Enter university email", text: $email)
                        .disableAutocorrection(true)
                        .background(!first ? Color.gray.opacity(0.05) : Color.white)
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "envelope.fill")))
                        .onTapGesture {
                            first = true
                        }
                        .padding(.vertical)
                    
                    
                    
                    SecureField("Password", text: $pass)
                        .background(!first ? Color.white : Color.gray.opacity(0.05))
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "lock.fill")))
                        .overlay(
                            NavigationLink(destination: {
                                PassRecovery()
                                    .navigationBarBackButtonHidden(true)
                            }, label: {
                                Text("forgot?")
                                    .padding()
                                    .foregroundColor(.black)
                            })
                            
                            ,alignment: .trailing
                        )
                        .onTapGesture {
                            first = false
                        }
                        .padding(.bottom)
                    
                    
                    NavigationLink("Connect") {
                        Navigation()
                            .navigationBarBackButtonHidden(true)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(.white)
                    .background(Color(red: 0.118, green: 0.118, blue: 0.118))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
                .padding()
                .ignoresSafeArea(.all, edges: .bottom)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 0.924, green: 0.934, blue: 0.946))
                        .frame(maxWidth: .infinity , maxHeight: .infinity)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                        })
                .offset(y: 20)
                
                
            }
            
            
            .background(
                Image("Login").padding(.bottom,200)
                    .onTapGesture {
                        UIApplication.shared.endEditing()
                    }
            )
            .background(Color(red: 0.924, green: 0.934, blue: 0.946))
        }
        
    }
    
    
}



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

