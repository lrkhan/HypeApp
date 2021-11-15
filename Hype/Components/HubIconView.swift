//
//  HubIconView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct HubIconView: View {
    @State private var eventSheet = false
    
    var hubName: String
    var image: String
    var eventHub: hubType
    
    init (hubName hub: hubType){
        self.eventHub = hub
        self.hubName = hub.name
        self.image = hub.image
    }
    
    var body: some View {
        HStack {
            
            Button(action: {
                eventSheet.toggle()
            }) {
                ZStack{
                    
                    Rectangle()
                        .frame(width: 177.0, height: 116.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("cardBG"))
                    
                    VStack(alignment: .center){
                        Image(image)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 70, height: 70)
                            .overlay(Circle().stroke(.red, lineWidth: 2))
                        Text(hubName)
                            .font(.footnote)
                            .foregroundColor(Color("textColor"))
                    }
                    
                }
                
            }
            .sheet(isPresented: $eventSheet) {
                HubListView(hubName: eventHub)
            }
        }
    }
}

struct HubIconView_Previews: PreviewProvider {
    static var previews: some View {
        let place = replay
        
        HubIconView(hubName: place)
    }
}
