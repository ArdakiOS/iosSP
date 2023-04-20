//
//  feedRow.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import SwiftUI

struct postRow: View {
    @State var post: Posts
    
    @State var ptime = ""
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "person.circle")
                    .font(.title)
                Spacer()
            }
            Spacer()
            VStack(alignment:.leading){
                HStack{
                    VStack(alignment:.leading){
                        Text(post.first_name + " " + post.last_name )
                            .fontWeight(.bold)
                            .font(.custom("HelveticaNeue-Bold", size: 16))
                        
                        Text(ptime)
                            .font(.caption)
                    }.onAppear{
                        ptime = postTime(createdTime: post.created_on)
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image("More")
                    }
                    
                }
                
                
                
                Text(post.text)
                    .font(.custom("HelveticaNeue", size: 12))
                
                HStack{
                    Button {
                        //
                    } label: {
                        Image(systemName:"heart")
                            .foregroundColor(Color.black)
                    }
                    
                    Text("\(post.likes)")
                        .font(.custom("HelveticaNeue", size: 10))
                    
                    Spacer()
                    
                    
                    Button {
                        //
                    } label: {
                        HStack{
                            Text("\(post.comment_count) commentaries")
                                .font(.custom("HelveticaNeue", size: 10))
                                .foregroundColor(.black)
                            Image("Vector6")
                        }
                    }
                    
                }
                
            }
        }
    }
    
    func postTime(createdTime : String) -> String{
        let date = Date()
        let calendar = Calendar.current
        let postedTime : [String] = createdTime.components(separatedBy: " ")
        let dayTime : [String] = postedTime[0].components(separatedBy: "/")
        let timeTime : [String] = postedTime[1].components(separatedBy: ":")
        
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        
        
        var result : String = ""
        if((Int(dayTime[2])! - year) == 0 ){
            if((Int(dayTime[1])! - month) == 0){
                if((Int(dayTime[0])! - day) == 0){
                    if((Int(timeTime[0])! - hour) == 0){
                        if((Int(timeTime[1])! - minutes) == 0){
                            if((Int(timeTime[2])! - seconds) == 0){
                                result = "Just posted"
                            }
                            else if((seconds - Int(timeTime[2])!) > 0) {
                                result = "Posted " + "\(seconds - Int(timeTime[2])!)" + " second ago"
                            }
                        }
                        else if((minutes - Int(timeTime[1])!) > 0){
                            result = "Posted " + "\(minutes - Int(timeTime[1])!)" + " minutes ago"
                        }
                    }else if((hour - Int(timeTime[0])!) > 0){
                        result = "Posted " + "\(hour - Int(timeTime[0])!)" + " hours ago"
                    }
                }else if ((day - Int(dayTime[0])!) > 0){
                    result = "Posted " + "\(day - Int(dayTime[0])!)" + " days ago"
                }
            }else if((month - Int(dayTime[1])!) > 0){
                result = "Posted " + "\(month - Int(dayTime[1])!)" + " months ago"
            }
        }else if((year - Int(dayTime[2])!) > 0 ){
            result = "Posted " + "\(year - Int(dayTime[2])!)" + " years ago"
        }
        
        return result
    }
}

//struct feedRow_Previews: PreviewProvider {
//    static var previews: some View {
//        feedRow()
//    }
//}
