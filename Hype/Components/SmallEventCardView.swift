//
//  SmallEventCardView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

struct SmallEventCardView: View {
    var eventName: String = "Event Name"
    var eventDate: String = "MM/DD/YYY hh:mm ?m"
    var eventLocationName: String = "Replay Cafe"
    var eventInfo: String = "smaple event information some more informaiton kjlkjlkj kljlkj jkllkjlk lkjlkj sdf sdf sdf dfwe "
    var eventLcoationImage: String = "temp"
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .padding(.horizontal)
                .frame(height: 100.0)
                .foregroundColor(Color("cardBG"))
            HStack(alignment: .center){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
                .foregroundColor(.black)
            }
            
        }
    }
}

struct SmallEventCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallEventCardView()
            
        
    }
}
