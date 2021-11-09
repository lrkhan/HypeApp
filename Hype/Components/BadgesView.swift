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
