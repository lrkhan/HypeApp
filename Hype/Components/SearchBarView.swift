//
//  SearchView.swift.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("cardBG"))
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.horizontal, 5.0)
                
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
