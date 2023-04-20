//
//  CustomTabBar.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 02.03.2023.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case Home
    case Search
    case Create
    case Study
    case Profile
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    var body: some View {
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){tab in
                    Spacer()
                    Image(systemName : getPicNamw(pic: tab))
                        .foregroundColor(selectedTab == tab ? Color(red: 225/255, green: 70/255, blue: 124/255): .white)
                        .font(.system(size : tab == .Create ? 30 : 20))
                        .scaleEffect(selectedTab == tab ? 1.25 : 1)
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)){
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: 300, height: 45)
            .background(.black)
            .cornerRadius(15)
            .padding(.horizontal)
    }
    
    func getPicNamw(pic: Tab) -> String{
        switch pic {
        case .Home:
            return "house"
        case .Search:
            return "magnifyingglass"
        case .Create:
            return "plus.circle.fill"
        case .Study:
            return "graduationcap"
        case .Profile:
            return "person.circle"
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
