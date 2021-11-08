//
//  NAVview.swift
//  tag card
//
//  Created by Shashua Rushdan on 11/5/21.
//  Edited by Luthfor Khan on 11/08/21.
//

import SwiftUI

struct NAVview: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Home().tabItem {
                Image(systemName: "house.circle")
                Text("Home")
            }.tag(1)
            Search().tabItem {
                Image(systemName: "magnifyingglass.circle")
                Text("Search")
            }.tag(2)
            Profile().tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }.tag(3)
        }
        
        /*HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "house.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(.all)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)*/
    }
}



struct NAVview_Previews: PreviewProvider {
    static var previews: some View {
        NAVview()
    }
}
