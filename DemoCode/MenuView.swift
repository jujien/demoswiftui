//
//  MenuView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct Menu: Identifiable {
   var id = UUID()
   var title: String
   var icon: String
}

let menuData = [
   Menu(title: "My Account", icon: "person.crop.circle"),
   Menu(title: "Settings", icon: "gear"),
   Menu(title: "Billing", icon: "creditcard"),
   Menu(title: "Team", icon: "person.2"),
   Menu(title: "Sign out", icon: "arrow.uturn.down")
]


struct MenuView: View {
    var menu = menuData
    
    @Binding var show: Bool
    @State var showSettings = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(self.menu) { (item) in
                    if item.title == "Settings" {
                        Button(action: {
                            self.showSettings.toggle()
                        }) {
                            MenuRow(image: item.icon, text: item.title)
                        }
                    } else {
                        MenuRow(image: item.icon, text: item.title)
                    }
                }
                
                Spacer()
            }
            .padding(.top, 20.0)
            .padding(30.0)
            .frame(minWidth: 0, maxWidth: 360)
            .background(Color("button"))
            .cornerRadius(30.0)
            .padding(.trailing, 60)
            .shadow(radius: 20.0)
            .rotation3DEffect(.init(degrees: self.show ? 0.0 : 60.0), axis: (x: 0, y: 10.0, z: 0))
            .animation(.default)
            .offset(x: self.show ? 0.0 : -screen.width, y: 0.0)
            .onTapGesture {
                self.show.toggle()
            }
            
            Spacer()
        }
        .padding(.top, statusBarHeight)
    }
}

struct MenuView_Previews: PreviewProvider {
    
    static let show: Binding<Bool> = .init(get: { () -> Bool in
        return true
    }) { (value) in
        
    }
    
    static var previews: some View {
        MenuView(show: Self.show)
    }
}
