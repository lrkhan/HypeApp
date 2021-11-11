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
                BigEventView()
                
                // Recomended Section
                Group{ SectionHeaderView(sectionName: "Recomended")
                    SmallEventCardView( eventLocationName: "Replay Cafe", eventLcoationImage: "replay")
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()}
                
                // My Events Section
                Group { SectionHeaderView(sectionName: "My Events")
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()
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
