//
//  TitleBarView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct TitleBarView: View {
    var titleName: String = "Home"
    @State private var settingSheet = false
    
    var body: some View {
        
        HStack {
            Text(titleName)
                .font(.title)
                .fontWeight(.medium)
                .padding(.horizontal)
                .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            Spacer()
            
            if titleName == "Profile" {
                Button(action: {
                    settingSheet.toggle()
                }) {
                    Image(systemName: "gearshape.circle")
                        .resizable()
                        .foregroundColor(Color("textColor"))
                        .frame(width: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .padding(.horizontal)
                }
                .sheet(isPresented: $settingSheet) {
                    SettingsView()
                }
            } else if titleName == "Search"  {
                Button(action: {
                    settingSheet.toggle()
                }) {
                    Image(systemName: "gearshape.circle")
                        .resizable()
                        .foregroundColor(Color("textColor"))
                        .frame(width: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .padding(.horizontal)
                }
                .sheet(isPresented: $settingSheet) {
                    SettingsView()
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
