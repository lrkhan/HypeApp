//
//  SectionHeaderView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/5/21.
//

import SwiftUI

struct SectionHeaderView: View {
    var sectionName: String = "Recommended"
    
    var body: some View {
        
        HStack {
            Text(sectionName)
                .font(.subheadline)
                .fontWeight(.medium)
                .padding(.horizontal)
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            Spacer()
            
            if sectionName == "Results" {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(Color.red)
                    .padding(.horizontal)
            }
        }
        
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView()
    }
}
