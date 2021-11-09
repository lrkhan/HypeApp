//
//  TitleBarView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct TitleBarView: View {
    var titleName: String = "Home"
    
    var body: some View {
        
        HStack {
            Text(titleName)
                .font(.title)
                .fontWeight(.medium)
                .padding(.horizontal)
                .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            Spacer()
            
            if titleName == "Home" {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .foregroundColor(Color("textColor"))
                        .frame(width: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .padding(.horizontal)
                }
            }
        }
        
    }
}


struct TitleBarView_Previews: PreviewProvider {
    static var previews: some View {
        TitleBarView()
            .preferredColorScheme(.light)
    }
}
