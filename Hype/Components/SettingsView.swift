//
//  SettingsView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isOld = false
    
    
    var body: some View {
        VStack {
            TitleBarView(titleName: "Settings")
                .padding(.vertical)
            
            SectionHeaderView(sectionName: "Basics")
            
            // Settings Group
            Group{
                
                Toggle(isOn: $isOld) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("21+ Filter")/*@END_MENU_TOKEN@*/
                }
                .padding(.horizontal)
                
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Includes Moz")/*@END_MENU_TOKEN@*/
                }
                .padding(.horizontal)
                
                Button(action: {
                    dismiss()
                }) {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(Color.red)
                }
            }
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
