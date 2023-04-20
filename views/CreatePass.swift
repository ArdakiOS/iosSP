//
//  CreatePass.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 30.01.2023.
//

import SwiftUI

struct CreatePass: View {
    @State var pass = ""
    @State var reppass = ""
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
                    Text("Sign up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    
                    SecureField("Create password", text: $pass)
                        .background(!first ? Color.gray.opacity(0.05) : Color.white)
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "envelope.fill")))
                        .onTapGesture {
                            first = true
                        }
                        .padding(.vertical)
                    
                    
                    
                    SecureField("Repeat password", text: $reppass)
                        .background(!first ? Color.white : Color.gray.opacity(0.05))
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "lock.fill")))
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
                    .padding()
                    .background(Color(red: 0.118, green: 0.118, blue: 0.118))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    
                    NavigationLink("Already have an account?") {
                        Login()
                            .navigationBarBackButtonHidden(true)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.black, lineWidth: 1))
                    .padding()
                    
                    
                }
                .padding()
                .ignoresSafeArea(.keyboard, edges: .bottom)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 0.924, green: 0.934, blue: 0.946))
                        .frame(maxWidth: .infinity , maxHeight: .infinity))
                .offset(y: 20)
                
                
            }
            
            .background(Image("Login").padding(.bottom,200))
            .background(Color(red: 0.924, green: 0.934, blue: 0.946))
        }
    }
}

struct CreatePass_Previews: PreviewProvider {
    static var previews: some View {
        CreatePass()
    }
}
