//
//  Grades.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 13.04.2023.
//

import SwiftUI

struct Grades: View {
    @State var course: String
    var body: some View {
        //Fetch for specific course
        if course == "all"{
            List{
                NavigationLink {
                    Grades(course: "CSCI 151")
                } label: {
                    HStack{
                        Text("CSCI 151")
                            .frame(maxWidth: 100, alignment: .leading)
                        Spacer()
                        Text("B+")
                            .frame(maxWidth: 40)
                    }
                }
                NavigationLink {
                    Grades(course: "Math 161")
                } label: {
                    HStack{
                        Text("Math 161")
                            .frame(maxWidth: 100, alignment: .leading)
                        Spacer()
                        Text("B-")
                            .frame(maxWidth: 40)
                    }
                }
                
                NavigationLink {
                    Grades(course: "HST 100")
                } label: {
                    HStack{
                        Text("HST 100")
                            .frame(maxWidth: 100, alignment: .leading)
                        Spacer()
                        Text("B")
                            .frame(maxWidth: 40)
                    }
                }


            }.listStyle(.plain)
        }else{
            VStack{
                Text(course)
                    .padding()
                HStack{
                    Text("Name")
                    Spacer()
                    Text("Grade")
                }
                .padding(.horizontal, 20)
                
                Divider()
                List{
                    HStack{
                        Text("Assignment 1")
                        Spacer()
                        Text("100%")
                    }
                    
                    HStack{
                        Text("Assignment 2")
                        Spacer()
                        Text("100%")
                    }
                    
                    HStack{
                        Text("Assignment 3")
                        Spacer()
                        Text("70%")
                    }
                    
                    HStack{
                        Text("Midterm 1")
                        Spacer()
                        Text("81%")
                    }
                    
                    HStack{
                        Text("Midterm 2")
                        Spacer()
                        Text("85%")
                    }
                    
                    HStack{
                        Text("Final")
                        Spacer()
                        Text("80%")
                    }
                }.listStyle(.plain)
            }
        }
    }
}

struct Grades_Previews: PreviewProvider {
    static var previews: some View {
        Grades(course: "all")
    }
}
