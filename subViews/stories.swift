//
//  stories.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 30.03.2023.
//

import SwiftUI

struct stories: View {
    @State var seen:Bool
    var body: some View {
        VStack{
            ZStack{
                Image("Story1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 56 ,height: 56)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                Circle()
                    .strokeBorder(seen ? .black : Color(red: 225/255, green: 70/255, blue: 124/255) , lineWidth: 2)
                    .frame(width: 60, height: 60)
                    .opacity(seen ? 0 : 1)
                    
            }
            Text("Name")
                .foregroundColor(seen ? .black : Color(red: 225/255, green: 70/255, blue: 124/255))
        }.onTapGesture {
            withAnimation(.easeIn(duration: 0.1)){
                seen = true
            }
        }

        
    }
    
}

struct stories_Previews: PreviewProvider {
    static var previews: some View {
        stories(seen: false)
    }
}
