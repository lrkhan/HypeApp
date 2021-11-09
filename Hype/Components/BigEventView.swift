//
//  BigEventView.swift
//  Hype
//
//  Created by Chris
//  Edited by Luthfor Khan on 11/9/21.
//

import SwiftUI

struct BigEventView: View {
    var hubName: String = "Replay Cafe"
    var eventSaves: Int = 123
    var image: String = "temp"
    
    var body: some View {
        ZStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                RoundedRectangle(cornerRadius: 10)
                    .padding(.all)
                    .frame(width: /*@START_MENU_TOKEN@*/370.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/)
                
                    .overlay(Image(image)
                                .resizable()
                                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/))
            }
            Group{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                
                    .padding(.all)
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack(alignment: .center){
                            Image(image)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                                .overlay(Circle().stroke(.red, lineWidth: 2))
                            Text(hubName)
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 125.0, height: 130.0)
                        .offset(y: -30)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack(alignment: .leading){
                            Text("Smash Sisters")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.top)
                            Text("November 19th, 2021")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                            Text("7:00pm - 10:00pm")
                                .font(.subheadline)
                            Spacer()
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 150, height: 110)
                        
                        VStack{
                            Text("\(eventSaves)")
                                .font(.headline)
                            Text("Saves")
                        }
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                    }
                }
            }
            .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/142.0/*@END_MENU_TOKEN@*/)
            .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/72.0/*@END_MENU_TOKEN@*/)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
    }
}

struct BigEventView_Previews: PreviewProvider {
    static var previews: some View {
        BigEventView()
    }
}
