//
//  Profile.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            TitleBarView(titleName: "Profile")
            ScrollView {
                ProfileView()
                    
                
                Group{
                    SectionHeaderView(sectionName: "My Event List")
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()
                }
                
                
                Group{
                    SectionHeaderView(sectionName: "Past Event List")
                    SmallEventCardView()
                    SmallEventCardView()
                    SmallEventCardView()
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
