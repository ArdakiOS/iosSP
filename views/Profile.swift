//
//  Profile.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 18.01.2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Text("Profile")
                .bold()
                .font(.system(size: 24))
            HStack{
                
                
                
                Spacer()
                
                VStack{
                    Text("0,000")
                        .fontWeight(.bold)
                    Text("Posts")
                }
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80, alignment: .leading)
                    
                Spacer()
                
                VStack{
                    Text("0,000")
                        .fontWeight(.bold)
                    Text("Following")
                }
                
                Spacer()
                
                
            }
            .padding(.horizontal)
            VStack(alignment: .leading){
                Text("Ardak Tursunbayev")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
                
                Text("4th year Computer Science student")
                    
                Text("Nazarbayev University")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            NavigationStack{
                List {
                    NavigationLink(destination: CustomCalendar().navigationBarBackButtonHidden(false), label: {
                        Text("My Event Calendar")
                    })
                    
                    Button {
                        //
                    } label: {
                        Text("Settings")
                    }
                }.listStyle(.plain)
                    .foregroundColor(Color(red: 225/255, green: 70/255, blue: 124/255))
            }
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
