//
//  Search.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct Search: View {
    var body: some View {
        VStack {
            TitleBarView(titleName: "Search")
            ScrollView {
                SearchBarView()
                
                Group{
                    SectionHeaderView(sectionName: "Tags")
                    VStack{
                        HStack{
                            TagView(tag: "#dnd")
                            TagView(tag: "#newbie")
                        }
                        HStack{
                            TagView(tag: "#smash")
                            TagView()
                        }
                        
                    }
                }
                
                Group{
                    SectionHeaderView(sectionName: "Hubs")
                    VStack{
                        HStack{
                            HubIconView()
                            HubIconView()
                        }
                        HStack{
                            HubIconView()
                            HubIconView()
                        }
                        HStack{
                            HubIconView()
                            HubIconView()
                        }
                        HStack{
                            HubIconView()
                            HubIconView()
                        }
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
