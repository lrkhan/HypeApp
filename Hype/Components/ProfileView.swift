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
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .padding(.trailing)
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
            }
            HStack{
                ZStack {
                    Image(profileImg)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120, height: 120)
                    .overlay(Circle().stroke(.white, lineWidth: 4))
                    Image(systemName: "pencil.circle.fill")
                        .foregroundColor(.white)
                        .overlay(Circle().stroke(.black,lineWidth: 2))
                        .offset(x: 35, y: 45)
                }
            }
            VStack{
                
                HStack {
                    Text(name)
                        .font(.headline)
                        .padding(.horizontal)
                    Spacer()
                }
                
                HStack{
                    Text(location)
                        .font(.subheadline)
                        .padding(.horizontal)
                    Spacer()
                    Image(systemName: "gamecontroller")
                        .padding(.trailing)
                    
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
