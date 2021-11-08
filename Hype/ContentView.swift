//
//  ContentView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                SectionHeaderView(sectionName: "Results")
                SmallEventCardView()
                ButtonView()
                ButtonView(buttonType: "Share")
                ButtonView(buttonType: "Remove")
            }
            VStack{
                SectionHeaderView(sectionName: "Recomended")
                SmallEventCardView()
                SmallEventCardView()
                SmallEventCardView()
                SmallEventCardView()
                SmallEventCardView()
                
            }
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
    }
}
