//
//  Profile.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct Profile: View {
    let user = profile()
    
    var body: some View {
        VStack{
            TitleBarView(titleName: "Profile")
            ScrollView {
                ProfileView(Profile: user)
                    
                
                Group{
                    SectionHeaderView(sectionName: "My Event List")
                    ForEach(savedEvent, id: \.self) {key in
                        SmallEventCardView(eventData: key)
                    }
                }
                
                
                Group{
                    SectionHeaderView(sectionName: "Past Event List")
                    ForEach(pastEvent, id: \.self) {key in
                        SmallEventCardView(eventData: key)
                    }
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
