//
//  HubListView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/15/21.
//

import SwiftUI

struct HubListView: View {
    @Environment(\.dismiss) var dismiss
    
    var hub: hubType
    var hubEvntList: [eventType]
    
    init(hubName: hubType) {
        self.hub = hubName
        self.hubEvntList = getList(hubName: self.hub)
    }
    
    var body: some View {
        VStack {
            TitleBarView(titleName: hub.name)
                .padding(.top)
            SectionHeaderView(sectionName: "Events")
            ScrollView {
                ForEach(hubEvntList, id: \.self) {key in
                    SmallEventCardView(eventData: key)
                }
                    .padding(.horizontal)
                }
            }
        }
    }

struct HubListView_Previews: PreviewProvider {
    static var previews: some View {
        HubListView(hubName: replay)
    }
}

func getList(hubName: hubType) -> [eventType] {
    let name = hubName.name
    if name == volt.name {
        return eventVolt
    }else if name == gamersGauntlet.name {
        return eventGg
    }else if name == gateKeeper.name {
        return eventGk
    }else if name == eternalGames.name {
        return eventEt
    }else if name == replay.name {
        return eventReplay
    }else {
        return []
    }
}
