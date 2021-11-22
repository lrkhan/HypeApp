//
//  EventView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct EventView: View {
    @Environment(\.dismiss) var dismiss
    
    var eventName: String
    var hubName: String
    var eventImage: String
    var hubAddress: String
    var hubPhone: String
    var hubSite: String
    var hubAccessibility: String
    var eventInfo: String
    var hub: hubType
    var thisEvnt: eventType
    
    init(eventData event: eventType) {
        self.thisEvnt = event
        self.hub = event.hubData
        self.eventName = event.name
        self.hubName = event.hubName
        self.eventImage = event.hubImage
        self.hubAddress = event.hubData.location
        self.hubPhone = event.hubPhone
        self.hubSite = event.hubSite
        self.hubAccessibility = event.hubAccessibility
        self.eventInfo = event.info
        
    }
    
    var body: some View {
        VStack {
            TitleBarView(titleName: "Event Info")
                .padding(.top)
            ScrollView {
                // Hub name
                HStack{
                    Text(eventName)
                        .font(.headline)
                        .foregroundColor(Color("textColor"))
                    Spacer()
                    Link("@\(hubName)", destination: URL(string: hubSite)!)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(Color("textColor"))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                // Hub information
                Group{
                    HStack{
                        // hub image
                        Image(eventImage)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .overlay(Circle().stroke(.red, lineWidth: 2))
                        
                        // contact info
                        VStack(alignment: .leading){
                            Button(action: {
                                let hubURL = NSURL(string:"https://maps.apple.com/?address=\(String(hubAddress.filter { !" \n\t\r".contains($0) }))")!
                                UIApplication.shared.open(hubURL as URL)
                            }) {
                                HStack{
                                    
                                    Image(systemName: "mappin.circle")
                                        .resizable()
                                        .frame(width: 25.0, height:25.0)
                                        .foregroundColor(Color.red)
                                    Text(hubAddress)
                                        .font(.footnote)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .multilineTextAlignment(.leading)
                                        
                                }
                            }
                            HStack{
                                Image(systemName: "phone.circle")
                                    .resizable()
                                    .frame(width: 25.0, height: 25.0)
                                    .foregroundColor(Color.red)
                                Text(hubPhone)
                                    .font(.footnote)
                                    .foregroundColor(Color("textColor"))
                            }
                            HStack{
                                Image(systemName: "person.crop.circle.badge.questionmark")
                                    .resizable()
                                    .frame(width: 25.0, height: 25.0)
                                    .foregroundColor(Color.red)
                                Text(hubAccessibility)
                                    .font(.footnote)
                                    .foregroundColor(Color("textColor"))
                            }
                        }
                        .padding(.trailing)
                        .frame(width: 260)
                    }
                    
                    
                    // Hub Basic Information
                    SectionHeaderView(sectionName: "Hub Information")
                    Group{
                        Text(eventInfo)
                            .font(.body)
                            .foregroundColor(Color("textColor"))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                        
                        
                    }
                }
                
            }
            SaveShareView(hubevent: thisEvnt)
                .padding(.vertical)
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        let evnt = eventReplay[0]
        
        EventView(eventData: evnt)
    }
}
