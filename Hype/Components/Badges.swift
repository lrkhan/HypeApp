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
                Image(img)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
            }
            .frame(width: 100, height: 100)
            Text(date)
                .font(.caption2)
                .foregroundColor(Color("textColor"))
        }
    }
    
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
            
    }
}
