//
//  HubPageView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/9/21.
//

import SwiftUI
import UIKit

struct HubPageView: View {
    @Environment(\.dismiss) var dismiss
    
    var hubName: String
    var hubImage: String
    var hubAddress: String
    var hubPhone: String
    var hubSite: String
    var hubAccessibility: String
    var hubInfo: String
    
    init (hubName hub: hubType){
        self.hubName = hub.name
        self.hubImage = hub.image
        self.hubAddress = hub.location
        self.hubPhone = hub.phone
        self.hubSite = hub.site
        self.hubAccessibility = hub.accessibility
        self.hubInfo = hub.info
    }
    
    var body: some View {
        VStack {
            TitleBarView(titleName: "Hub Page")
                .padding(.top)
            ScrollView {
                // Hub name
                HStack{
                    Text(hubName)
                        .font(.headline)
                        .foregroundColor(Color("textColor"))
                    Spacer()
                    Link("Website", destination: URL(string: hubSite)!)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(Color("textColor"))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                // Hub information
                Group{
                    HStack{
                        // hub image
                        Image(hubImage)
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
                        Text(hubInfo)
                            .font(.body)
                            .padding(.horizontal)
                        
                        
                    }
                }
            }
        }
    }
}

struct HubPageView_Previews: PreviewProvider {
    static var previews: some View {
        //let place = hubType()
        
        HubPageView(hubName: gamersGauntlet)
        
    }
}
