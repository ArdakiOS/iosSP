//
//  Login.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 18.01.2023.
//

import SwiftUI

struct Registration: View {
    
    @State var email = ""
    @State var code = ""
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
                    
                    
                    TextField("Enter university email", text: $email)
                        .disableAutocorrection(true)
                        .background(!first ? Color.gray.opacity(0.05) : Color.white)
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "envelope.fill")))
                        .onTapGesture {
                            first = true
                        }
                        .padding(.vertical)
                    
                    
                    
                    SecureField("Access code", text: $code)
                        .background(!first ? Color.white : Color.gray.opacity(0.05))
                        .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName: "lock.fill")))
                        .overlay(
                            NavigationLink(destination: {
                                //
                            }, label: {
                                Text("no code?")
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
                        CreatePass()
                            .navigationBarBackButtonHidden(true)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(.white)
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
                    .padding(.top)
                    
                    
                    
                }
                .padding()
                .ignoresSafeArea(.keyboard, edges: .bottom)
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
                })
            .background(Color(red: 0.924, green: 0.934, blue: 0.946))
        }

        
    }
    
    
}


struct OutlinedTextFieldStyle: TextFieldStyle {
    
    @State var icon: Image?
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            if icon != nil {
                icon
                    .foregroundColor(Color.black)
            }
            configuration
            
            
        }
        .padding(28)
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(Color.black, lineWidth: 1)
        }
    }
}

struct OutlinedTextFieldStyleWithButton: TextFieldStyle {
    
    @State var icon: Image?
    @State var butText : String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            if icon != nil {
                icon
                    .foregroundColor(Color.black)
            }
            configuration
            
            Button {
                //
            } label: {
                Text(butText)
                    .foregroundColor(.black)
            }

            
        }
        .padding(28)
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(Color.black, lineWidth: 1)
        }
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
