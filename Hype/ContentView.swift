//
//  ContentView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            test().tabItem {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // light mode View
        ContentView()
        
        // dark mode view
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
            
    }
}
