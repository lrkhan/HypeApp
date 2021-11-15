//
//  Home.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            TitleBarView()
            
            ScrollView {
                // add big event card here - figure out how to add scrolling function
                CarouselView()
                
                // Recomended Section
                Group{ SectionHeaderView(sectionName: "Recomended")
                    ForEach((0...5), id: \.self) {key in
                        SmallEventCardView(eventData: eventList[key])
                    }
                }
                
                // My Events Section
                Group { SectionHeaderView(sectionName: "My Events")
                    ForEach(savedEvent, id: \.self) {key in
                        SmallEventCardView(eventData: key)
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
