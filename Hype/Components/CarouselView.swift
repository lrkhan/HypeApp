//
//  CarouselView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/10/21.
//

import SwiftUI

struct CarouselView: View {
    @State private var index = 0
    
    var evnt: [eventType] = [eventList[Int.random(in: 0..<eventList.endIndex)], eventList[Int.random(in: 0..<eventList.endIndex)], eventList[Int.random(in: 0..<eventList.endIndex)]]
    
    var body: some View {
        VStack{
            TabView(selection: $index) {
                ForEach(evnt, id: \.self) { index in
                    BigEventView(eventName: index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 10) {
                ForEach((0..<3), id: \.self) { i in
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
                        .opacity(0.7)

                }
            }
        
        }
        .frame(width: 400, height: 300)
        
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
