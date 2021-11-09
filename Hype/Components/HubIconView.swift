//
//  HubIconView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct HubIconView: View {
    var hubName = "Replay Cafe"
    var image = "temp"
    var body: some View {
        HStack {
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack{
                    Rectangle()
                        .frame(width: 177.0, height: 116.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("cardBG"))
                    
                    VStack(alignment: .center){
                        Image(image)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 70, height: 70)
                            .overlay(Circle().stroke(.black, lineWidth: 1))
                        Text(hubName)
                            .font(.footnote)
                            .foregroundColor(Color("textColor"))
                    }
                    
                }
                
            }
        }
    }
}

struct HubIconView_Previews: PreviewProvider {
    static var previews: some View {
        HubIconView()
    }
}
