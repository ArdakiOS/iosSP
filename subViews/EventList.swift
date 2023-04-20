//
//  EventList.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 03.04.2023.
//

import SwiftUI

struct EventList: View {
    @Binding var events: [Event]
    @Binding var date : Date
    var body: some View {
        Divider()
        let format = date.getFormattedDate(format: "dd/MM/yyyy")
        List{
            ForEach(events, id: \.self){ event in
                if(event.date == format){
                    VStack(alignment: .leading){
                        Text("Text: " + event.text)
                        Text("Time: " + event.time)
                    }.font(.subheadline)
                }
            }
        }.listStyle(.inset)
        
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        CustomCalendar()
    }
}
