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
                .foregroundColor(Color(red: 0.973, green: 0.973, blue: 0.973))
            HStack(alignment: .center){
                VStack(alignment: .center){
                    Image(eventLcoationImage)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(Color(red: 0.238, green: 0.536, blue: 0.676), lineWidth: 1))
                    Text(eventLocationName)
                        .font(.caption)
                }
                .frame(width: 90.0, height: 90.0)
                VStack(alignment: .leading){
                    HStack{
                        Text(eventName)
                            .font(.headline)
                        Spacer()
                    }
                    
                    Text(eventDate)
                        .font(.subheadline)
                        .padding(.bottom, 1.0)
                    
                    HStack {
                        Text(eventInfo)
                            .font(.caption)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        Spacer()
                    }
                    
                    Spacer ()
                }
                .frame(width: 250, height: 85)
            }
            
        }
    }
}

struct SmallEventCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallEventCardView()
        
    }
}
