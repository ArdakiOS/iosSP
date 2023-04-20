//
//  Navigation.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 18.01.2023.
//

import SwiftUI

struct Navigation: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var isTapped = 3
    @State private var selectedTab : Tab = .Home
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    TabView(selection: $selectedTab) {
                        Feed()
                            .tag(Tab.Home)
                        Search()
                            .tag(Tab.Search)
                        Create(selectedTab: $selectedTab)
                            .tag(Tab.Create)
                        Study()
                            .tag(Tab.Study)
                        Profile()
                            .tag(Tab.Profile)
                    }
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
            .navigationTitle("Stadio")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(selectedTab == .Profile || selectedTab == .Create)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Button {
                            //
                        } label: {
                            Image(systemName: "bell")
                                .bold()
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                        
                        NavigationLink(destination: {
                            Messages(searchText: "")
                                .navigationBarBackButtonHidden(true)
                        }, label: {
                            Image(systemName: "message")
                                .bold()
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        })
                    }
                }
            }
        }
    }
    
}


struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
