//
//  CardBottomView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct CardBottomView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Rectangle()
                .frame(width: 60.0, height: 6.0)
                .cornerRadius(3.0)
                .opacity(0.1)
            
            Text("This certificate is proof that Mithun has achieved UI Design course with approval from a Design+Code instructor.")
            
            Spacer()
        }
        .frame(minWidth: 0, idealWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(30.0)
        .shadow(radius: 20.0)
        .offset(x: 0.0, y: UIScreen.main.bounds.height - 215.0)
    }
}

struct CardBottomView_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomView()
    }
}
