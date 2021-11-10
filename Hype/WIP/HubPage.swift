//
//  HubPage.swift
//  Hype
//
//  Created by Jonas Harrison on 11/8/21.
//

import SwiftUI
import CoreLocation
import MapKit

struct HubPage: View {
    @State private var ReplayCafe = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3722, longitude: -83.0659), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    
    
    struct City: Identifiable {
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
    let annotations =  [City(name: "Replay Cafe", coordinate: CLLocationCoordinate2D(latitude: 42.3722, longitude: -83.0659))]
    
    
    let address: String = "Address:"
    let accessInfo: String = "Accessability Information"
    let contactInfo: String = "Contact Information"
    let hubInfo: String = "Hub Information"
    var eventName: String = "Replay Cafe"
    var eventAddress: String = "6545 St Antoine, Detroit, MI 48202"
    var eventAccessInfo: String = "- Lorem Ipsum - Dolor sit amet"
    var eventContactInfo: String = "313 444 4444 replaycafe@email.com"
    var eventHubInfo: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    var body: some View {
        ZStack{
            VStack {
                //M(screenName:"Hub")
                
                RoundedRectangle(
                    cornerRadius: 10)
                    .frame(
                        width:379,
                        height: 600)
                    .foregroundColor(Color(
                        red: 0.973,
                        green: 0.973,
                        blue: 0.973))
            }
            //this is the main vertical stack
            VStack{
                //HStack 1
                HStack{
                    VStack{
                        Image("ZfMsDGWA")
                            .resizable()
                            .frame(width: 90.0, height: 90.0)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.red, lineWidth: 2))
                        Text(eventName)
                            .fontWeight(.bold)
                    }
                    VStack(alignment: .leading){
                        HStack {
                            Image(systemName: "mappin.circle")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                                .foregroundColor(Color.red)
                            
                            VStack {
                                HStack{
                                    Text(address)
                                        .fontWeight(.semibold)
                                    
                                }
                                Text(eventAddress)
                            }
                            
                            
                        }
                        HStack {
                            Image(systemName: "person.crop.circle.badge.exclamationmark")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                                .foregroundColor(Color.red)
                            
                            VStack {
                                HStack{
                                    Text(accessInfo)
                                        .fontWeight(.semibold)
                                }
                                Text(eventAccessInfo)
                            }
                        }
                        HStack {
                            Image(systemName: "phone.circle")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                                .foregroundColor(Color.red)
                            
                            VStack {
                                HStack{
                                    Text(contactInfo)
                                        .fontWeight(.semibold)
                                }
                                Text(eventContactInfo)
                            }
                        }
                        
                    }
                    
                }
                //Text("test")
                Map(coordinateRegion: $ReplayCafe, annotationItems: annotations){MapPin(coordinate: $0.coordinate)
                    
                }
                    .frame(width: 350, height: 200)
                //.clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Rectangle().stroke(Color.red, lineWidth: 2))
                
                
                
                
                HStack{
                    Text(hubInfo)
                        .fontWeight(.semibold)
                        .padding(.leading)
                    Spacer()
                }
                Text(eventHubInfo)
                    .padding(.leading)
                Link("Replay Cafe Website", destination: URL(string: "https://www.replaycafedetroit.com")!)
            }
            
        }
    }
}

struct HubPage_Previews: PreviewProvider {
    static var previews: some View {
        HubPage()
    }
}
