//
//  HypeApp.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

@main
struct HypeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct HypeApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hype")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.red)
    }
}
