//
//  BigEventView.swift
//  Hype
//
//  Created by Chris
//  Edited by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct BigEventView: View {
    var eventData: eventType
    var hubName: String
    var eventName: String
    var eventDate: String
    var eventTime: String
    var eventSaves: Int
    var image: String
    var hubImg: String
    
    @State private var hubSheet = false
    @State private var eventSheet = false
    
    init(eventName event: eventType) {
        self.eventData = event
        self.hubName = event.hubName
        self.hubImg = event.hubImage
        self.eventName = event.name
        self.eventDate = event.date
        self.eventTime = event.time
        self.eventSaves = event.saves
        self.image = event.bigImg
    }
    
    var body: some View {
        ZStack{
            Button(action: {
                eventSheet.toggle()
            }) {
                RoundedRectangle(cornerRadius: 10)
                    .padding(.all)
                    .frame(width: /*@START_MENU_TOKEN@*/370.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/)
                
                    .overlay(Image(image)
                                .resizable()
                                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/))
            }
            .sheet(isPresented: $eventSheet) {
                EventView(eventData: eventData)
            }
            
            Group{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(width: 370.0, height: 106.0)
                    .opacity(0.7)
                    .padding(.all)
                HStack{
                    Button(action: {
                        hubSheet.toggle()
                    }) {
                        VStack(alignment: .center){
                            Image(hubImg)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                                .overlay(Circle().stroke(.red, lineWidth: 2))
                            Text(hubName)
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 125.0, height: 130.0)
                        .offset(y: -30)
                    }
                    .sheet(isPresented: $hubSheet) {
                        HubPageView(hubName: eventData.hubData)
                    }
                    
                    Button(action: {
                        eventSheet.toggle()
                    }) {
                        VStack(alignment: .leading){
                            Text(eventName)
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.top)
                            Text(eventDate)
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                            Text(eventTime)
                                .font(.subheadline)
                            Spacer()
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 150, height: 110)
                        
                        VStack{
                            Text("\(eventSaves)")
                                .font(.headline)
                            Text("Saves")
                        }
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                    }
                    .sheet(isPresented: $eventSheet) {
                        EventView(eventData: eventData)
                    }
                }
            }
            .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/142.0/*@END_MENU_TOKEN@*/)
            .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/72.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct BigEventView_Previews: PreviewProvider {
    static var previews: some View {
        let hub = hubType()
        let evnt = eventType(eventHub: hub)
        
        BigEventView(eventName: evnt)
    }
}
