//
//  Search.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct Search: View {
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
        ]
    
    let tags = ["#dnd", "#newbie", "#smash", "#magic"]
    let tagImgs = ["dnd", "new", "smash", "magic"]
    
    var body: some View {
        VStack {
            TitleBarView(titleName: "Search")
            ScrollView {
                SearchBarView()
                
                Group{
                    SectionHeaderView(sectionName: "Tags")
                    VStack{
                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach((0...3), id: \.self) {i in
                                TagView(tag: tags[i], image: tagImgs[i])
                                    
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                Group{
                    SectionHeaderView(sectionName: "Hubs")
                    
                    VStack{
                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(hubList, id: \.self) {key in
                                HubIconView(hubName: key)
                                    
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
