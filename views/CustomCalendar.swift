//
//  CustomCalendar.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 02.03.2023.
//

import SwiftUI

struct CustomCalendar: View {
    @State var date = Date()
    @State var events : [Event] = [Event(text: "Biol 110 midterm", time: "19:00", date: "05/04/2023"),
                            Event(text: "Zoom call", time: "18:00", date: "06/04/2023"),
                            Event(text: "Zoom call", time: "18:00", date: "13/04/2023"),
                            Event(text: "Start of Hackaton", time: "10:00", date: "16/04/2023"),
                            Event(text: "SP video/report", time: "22:59", date: "21/04/2023"),
                            Event(text: "Zoom call", time: "13:00", date: "20/04/2023"),
                            Event(text: "CV template", time: "11:00", date: "19/04/2023"),
                            Event(text: "GEOL deadline", time: "14:30", date: "19/04/2023"),
                            Event(text: "Interview", time: "20:00", date: "19/04/2023")]
    var body: some View {
        
        VStack(spacing: 20) {
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            

            let format = date.getFormattedDate(format: "dd/MM/yyyy")
            
            // Check if picked time have any events stored in database
            Text("Current date \(format)")
            
            // Events list
            EventList(events: $events, date: $date)
        }
        
    }
}

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}


struct CustomCalendar_Previews: PreviewProvider {
    static var previews: some View {
        CustomCalendar()
    }
}

