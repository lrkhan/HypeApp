//
//  SandBoxView.swift.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct SandBoxView_swift: View {
    @State private var isSaved = false
    
    var body: some View {
        VStack{
            HStack{
                if isSaved {
                    Button(action: {
                        self.isSaved.toggle()
                    }) {
                        ButtonView(buttonType: "Remove")
                    }
                } else {
                    Button(action: {
                        self.isSaved.toggle()
                    }) {
                        ButtonView(buttonType: "Save")
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    ButtonView(buttonType: "Share")
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.horizontal, 60.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SandBoxView_swift_Previews: PreviewProvider {
    static var previews: some View {
        SandBoxView_swift()
    }
}
