//
//  PassRecovery.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 30.01.2023.
//

import SwiftUI

struct PassRecovery: View {
    @State var email = ""
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
                        .padding(.top)
                    
                    
                    TextField("Enter university email", text: $email)
                        .background(Color.white)
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "envelope.fill")))
                        
                        .padding(.vertical)
                    
                    
                    NavigationLink("Send me further details") {
                        //
                    }
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(.white)
                    
                    .background(Color(red: 0.118, green: 0.118, blue: 0.118))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Spacer()
                    
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

struct PassRecovery_Previews: PreviewProvider {
    static var previews: some View {
        PassRecovery()
    }
}
