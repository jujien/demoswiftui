//
//  CircleButton.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct CircleButton: View {
    var icon = "person.crop.circle"
    
    
    var body: some View {
        HStack {
            Image(systemName: self.icon)
                .foregroundColor(.primary)
        }
        .frame(width: 40.0, height: 40.0)
        .background(Color("button"))
        .cornerRadius(30.0)
        .shadow(color: Color("buttonShadow"), radius: 20.0, x: 0.0, y: 20.0)
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton()
    }
}
