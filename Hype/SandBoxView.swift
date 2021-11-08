//
//  SandBoxView.swift.swift
//  Hype
//
//  Created by Luthfor Khan on 11/8/21.
//

import SwiftUI

struct SandBoxView_swift: View {
    var body: some View {
        VStack{
            TitleBarView()
            SectionHeaderView()
            SmallEventCardView()
            HubIconView()
            ButtonView()
            TagView()
            NAVview()
        }
    }
}

struct SandBoxView_swift_Previews: PreviewProvider {
    static var previews: some View {
        SandBoxView_swift()
    }
}
