//
//  TitleView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
            }
            
            Image("Illustration5")
            
            Spacer()
        }
        .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
