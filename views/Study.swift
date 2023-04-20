//
//  Study.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 18.01.2023.
//

import SwiftUI

struct Study: View {
    var body: some View {
        VStack{
            HStack{
                Text("Continue your study")
                    .font(.title3)
                    .bold()
                    .padding()
                Spacer()
                
            }
            HStack{
                Text("CSCI 151 - Lecture 11")
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
                Spacer()
            }
            Image("cys")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
            
            HStack{
                Text("Upcoming deadlines")
                    .font(.title3)
                    .bold()
                    .padding()
                Spacer()
            }
            
            HStack{
                Text("Browse your LMS")
                    .font(.title3)
                    .bold()
                    .padding()
                Spacer()
            }
            
            HStack{
                NavigationLink {
                    CoursesList()
                } label: {
                    VStack{
                        Image(systemName: "books.vertical")
                        Text("My Courses")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
                
                
                NavigationLink {
                    //
                } label: {
                    VStack{
                        Image(systemName: "tray.and.arrow.down.fill")
                        Text("Assignments")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
                .padding(.horizontal)
                
                NavigationLink {
                    //
                } label: {
                    VStack{
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("Discussions")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
            }
            .padding(.bottom)
            HStack{
                NavigationLink {
                    Grades(course: "all")
                } label: {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("My grades")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
                
                
                NavigationLink {
                    //
                } label: {
                    VStack{
                        Image(systemName: "calendar")
                        Text("Exam schedule")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
                .padding(.horizontal)
                
                NavigationLink {
                    //
                } label: {
                    VStack{
                        Image(systemName: "doc.text")
                        Text("My requests")
                    }
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                }
                .frame(maxWidth: 100, maxHeight: 75)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                )
            }
            Spacer()
      
            
        }
    }
}

struct Study_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
