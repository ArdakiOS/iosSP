//
//  CoursesList.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 13.04.2023.
//

import SwiftUI

struct CoursesList: View {
    var body: some View {
        VStack{
            Text("List of Courses")
                .font(.title2)
                .bold()
            List{
                NavigationLink {
                    CoursePage(courseName: "CSCI 151")
                } label: {
                    Text("CSCI 151")
                }
                NavigationLink {
                    CoursePage(courseName: "Math 161")
                } label: {
                    Text("Math 161")
                }
                NavigationLink {
                    CoursePage(courseName: "HST 100")
                } label: {
                    Text("HST 100")
                }
                
            }.listStyle(.plain)
        }
    }
}

struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesList()
    }
}
