//
//  ProfileView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct ProfileView: View {
    var name: String = "Abe"
    var location: String = "Detroit, MI"
    var profileImg: String = "temp"
    @State private var showingSheet = false
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .padding(.trailing)
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("textColor"))
            }
            HStack{
                ZStack {
                    Image(profileImg)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.red, lineWidth: 2))
                    Image(systemName: "pencil.circle.fill")
                        .foregroundColor(Color.white)
                        .overlay(Circle().stroke(.black,lineWidth: 2))
                        .offset(x: 35, y: 45)
                }
            }
            VStack{
                
                HStack {
                    Text(name)
                        .font(.headline)
                        .foregroundColor(Color("textColor"))
                        .padding(.horizontal)
                    Spacer()
                }
                
                HStack{
                    Text(location)
                        .font(.subheadline)
                        .foregroundColor(Color("textColor"))
                        .padding(.horizontal)
                    Spacer()
                    Button(action: {
                        showingSheet.toggle()
                    }) {
                        Image(systemName: "gamecontroller")
                            .foregroundColor(Color("textColor"))
                            .padding(.trailing)
                    }
                    .sheet(isPresented: $showingSheet) {
                        BadgesView()
                    }
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
        
    }
}
