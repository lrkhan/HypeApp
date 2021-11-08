//
//  ButtonView.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct ButtonView: View {
    var buttonType: String = "Save"
    var body: some View {
        
        ZStack{
            /*RoundedRectangle(cornerRadius: 10)
             .padding(.horizontal)
             .frame(height: 100.0)
             .foregroundColor(Color(red: 0.973, green: 0.973, blue: 0.973))*/
            
            if buttonType == "Save"{
                
                Circle()
                    .size(width: 100, height: 100)
                    .frame(width: 100, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Image(systemName: "checkmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Text("Save")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
                
            } else if buttonType == "Share" {
                Circle()
                    .size(width: 100, height: 100)
                    .frame(width: 100, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Text("Share")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
            } else if  buttonType == "Remove" {
                Circle()
                    .size(width: 100, height: 100)
                    .frame(width: 100, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Image(systemName: "trash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
            }
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
