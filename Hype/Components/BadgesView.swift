//
//  BadgesView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct BadgesView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TitleBarView(titleName: "Badges")
                .padding(.top)
        ScrollView {
            VStack{
                HStack{
                    Badges(img: "fries", date: "11/1/2021")
                    Badges(img: "coop")
                    Badges(img: "finger1")
                }
                HStack{
                    Badges(img: "hamburger")
                    Badges(img: "numone")
                    Badges(img: "pgreen")
                }
                HStack{
                    Badges(img: "pgold")
                    Badges()
                    Badges()
                }
                HStack{
                    Badges()
                    Badges()
                    Badges()
                }
                HStack{
                    Badges()
                    Badges()
                    Badges()
                }
                HStack{
                    Badges()
                    Badges()
                    Badges()
                }
                
            }
            .padding(.horizontal)
        }
        /*Button("Be Gone Foul Beast") {
            dismiss()
        }
        .font(.body)
        .foregroundColor(.red)*/
        }
    }
}


struct BadgesView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesView()
            
            
    }
}
