//
//  CoursePage.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 12.04.2023.
//

import SwiftUI

struct CoursePage: View {
    @State var courseName: String
    @State var page : Int = 1
    var body: some View {
        VStack{
            Text(courseName)
                .font(.title2)
                .padding()
            
            HStack{
                Text("Course Materials")
                    .fontWeight(page == 1 ? .bold : .regular)
                    .onTapGesture {
                        withAnimation() {
                            page = 1
                        }
                    }
                    .underline(page == 1 , color: .black)
                Text("Grades")
                    .fontWeight(page == 2 ? .bold : .regular)
                    .onTapGesture {
                        withAnimation() {
                            page = 2
                        }
                    }
                    .underline(page == 2, color: .black)
                Text("Instructor contacts")
                    .fontWeight(page == 3 ? .bold : .regular)
                    .onTapGesture {
                        withAnimation() {
                            page = 3
                        }
                    }
                    .underline(page == 3, color: .black)
            }.font(.system(size: 17))
            VStack{
                if page == 2{
                    Grades(course: courseName)
                }else{
                    CoursePageContent(page: $page)
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    }
}

struct CoursePage_Previews: PreviewProvider {
    static var previews: some View {
        CoursePage(courseName: "CSCI 151")
    }
}
