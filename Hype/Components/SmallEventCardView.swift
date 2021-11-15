//
//  SmallEventCardView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

struct SmallEventCardView: View {
    @State private var hubSheet = false
    @State private var eventSheet = false
    
    var eventName: String = "Event Name"
    var eventDate: String = "MM/DD/YYY hh:mm ?m"
    var eventLocationName: String = "Replay Cafe"
    var eventInfo: String = "smaple event information some more informaiton kjlkjlkj kljlkj jkllkjlk lkjlkj sdf sdf sdf dfwe "
    var eventLcoationImage: String = "temp"
    var eventHub: hubType
    var eventData: eventType
    
    init(eventData event: eventType) {
        self.eventData = event
        self.eventHub = event.hubData
        self.eventName = event.name
        self.eventDate = event.date + " " + event.time
        self.eventLocationName = event.hubName
        self.eventLcoationImage = event.hubImage
        self.eventInfo = event.info
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .padding(.horizontal)
                .frame(height: 100.0)
                .foregroundColor(Color("cardBG"))
            HStack(alignment: .center){
                Button(action: {
                    hubSheet.toggle()
                }) {
                    VStack(alignment: .center){
                        Image(eventLcoationImage)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                            .overlay(Circle().stroke(.red, lineWidth: 1))
                        Text(eventLocationName)
                            .font(.caption)
                            .foregroundColor(Color("textColor"))
                    }
                    .frame(width: 90.0, height: 90.0)
                }
                .sheet(isPresented: $hubSheet) {
                    HubPageView(hubName: eventHub)
                }
                
                Button(action: {
                    eventSheet.toggle()
                }) {
                    VStack(alignment: .leading){
                        HStack{
                            Text(eventName)
                                .font(.headline)
                                .foregroundColor(Color("textColor"))
                            Spacer()
                        }
                        
                        Text(eventDate)
                            .font(.subheadline)
                            .foregroundColor(Color("textColor"))
                            .padding(.bottom, 1.0)
                        
                        HStack {
                            Text(eventInfo)
                                .font(.caption)
                                .foregroundColor(Color("textColor"))
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                            Spacer()
                        }
                        
                        Spacer ()
                    }
                    .frame(width: 250, height: 85)
                }
                .sheet(isPresented: $eventSheet) {
                    EventView(eventData: eventData)
                }
                .foregroundColor(.black)
            }
            
        }
    }
}

struct SmallEventCardView_Previews: PreviewProvider {
    static var previews: some View {
        let hub = hubType()
        let evnt = eventType(eventHub: hub)
        
        SmallEventCardView(eventData: evnt)
        
        
    }
}
