//
//  TagView.swift.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct TagView: View {
    var tag = "#Magic"
    var image = "temp"
    var body: some View {
        HStack {
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack{
                    Image(image)
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                        .foregroundColor(Color.red)
                        .frame(width: 177.0, height: 116.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .tint(Color.red)
                    
                    Rectangle()
                        .frame(width: 177.0, height: 116.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .opacity(/*@START_MENU_TOKEN@*/0.6/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.red)
                    
                    /*@START_MENU_TOKEN@*/Text(tag)
                        .font(.title)
                        .fontWeight(.heavy)
                    .foregroundColor(Color.white)/*@END_MENU_TOKEN@*/}
                
                
            }
            
        }
    }
    
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}
