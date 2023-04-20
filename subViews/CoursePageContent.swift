//
//  CoursePageContent.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 12.04.2023.
//

import SwiftUI
import AVKit

struct CoursePageContent: View {
    @Binding var page: Int
    var body: some View {
        if(page == 1){
            VStack{
                VideoPlayer(player: AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!))   .frame(width: 388, height: 200)
                HStack{
                    Text("CSCI 151 Lecture 12")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                
                HStack{
                    Text("Information about upcoming quiz")
                        .font(.title2)
                    Spacer()
                }
                .padding()
                
                HStack{
                    Image(systemName: "doc")
                    Text("Learning materials")
                        .bold()
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Image(systemName: "doc.on.doc")
                    Text("Pre-quiz homework")
                        .bold()
                    Spacer()
                }.padding()
                
                HStack{
                    Text("Comments")
                        .font(.title2)
                        .bold()
                    Spacer()
                }.padding(.horizontal)
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person.circle")
                            .font(.title)
                            .bold()
                        VStack(alignment: .leading){
                            Text("Meruert")
                            Text("5 mins ago")
                        }
                        Spacer()
                    }
                    .padding(.bottom, 7)
                    
                    
                    Text("Could you please clarify points on 11th slide")
                        .font(.subheadline)
                    
                    
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
                
                Button {
                    //
                } label: {
                    HStack{
                        Image(systemName: "plus")
                        Text("Add comments")
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                }

                
                HStack{
                    Button {
                        //
                    } label: {
                        Text("<- Lecture 11")
                            .foregroundColor(.black)
                            .padding()
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.black, lineWidth: 1)
                    )
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Lecture 13 ->")
                            .foregroundColor(.black)
                            .padding()
                    }.overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.black, lineWidth: 1)
                    )

                }.padding(.horizontal)
                
                Spacer()
            }
        }
        if(page == 3){
            VStack{
                Text("Professor's name : Ben Tyler")
                Text("Email: ben.tyler@nu.edu.kz")
                Text("Office Hours: 3pm - 5pm")
                Text("Cabinet: 7.111")
                Spacer()
            }
        }
    }
}


struct CoursePageContent_Previews: PreviewProvider {
    static var previews: some View {
        CoursePage(courseName: "CSCI 151")
    }
}
