//
//  MenuButton.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct MenuButton: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Button(action: {
                self.show.toggle()
            }) {
                HStack {
                    Spacer()
                    
                    Image(systemName: "list.dash")
                        .foregroundColor(.primary)
                }
                .padding(.trailing, 18.0)
                .frame(width: 90.0, height: 60.0)
                .background(Color("button"))
                .cornerRadius(30.0)
                .shadow(color: Color("buttonShadow"), radius: 20.0, x: 0.0, y: 20.0)
            }
            
            Spacer()
        }
        
    }
}

struct MenuButton_Previews: PreviewProvider {
    static let show: Binding<Bool> = .init(get: { () -> Bool in
        return true
    }) { (value) in
        
    }
    static var previews: some View {
        MenuButton(show: Self.show)
    }
}
