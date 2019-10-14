//
//  Tabbar.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                   Image("IconHome")
                   Text("Home")
                }
                .tag(1)
            
            ContentView()
                .tabItem {
                    Image("IconCards")
                    Text("Certificates")
                }
            .tag(2)
            
            Setting()
                .tabItem {
                    Image("IconSettings")
                    Text("Settings")
                }
            .tag(3)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
