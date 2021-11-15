//
//  temp.swift
//  Hype
//
//  Created by Luthfor Khan on 11/15/21.
//

import SwiftUI

struct temp: View {
    @State private var index = 0
    var body: some View {
        VStack{
            TabView(selection: $index) {
                ForEach((0..<3), id: \.self) { index in
                    CardView()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }
        .frame(height: 200)
    }
}

struct temp_Previews: PreviewProvider {
    static var previews: some View {
        temp()
    }
}

struct CardView: View{
    var body: some View{
        Rectangle()
            .fill(Color.pink)
            .frame(height: 200)
            .border(Color.black)
            .padding()
    }
}
