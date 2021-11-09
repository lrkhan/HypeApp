//
//  Badges.swift
//  Hype
//
//  Created by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct Badges: View {
    var img: String = "temp"
    var date:String = "11/03/2021"
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("cardBG")/*@END_MENU_TOKEN@*/)
                if img != "temp"{
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                }
            }
            .frame(width: 100, height: 100)
            if img != "temp"{
                Text(date)
                    .font(.caption2)
                    .foregroundColor(Color("textColor"))
            } else {
                Spacer()
            }
        }
        .frame(width: /*@START_MENU_TOKEN@*/105.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/130.0/*@END_MENU_TOKEN@*/)
    }
    
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
        
    }
}
