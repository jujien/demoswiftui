//
//  HomeView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI
let statusBarHeight = ((UIApplication.shared.connectedScenes.first as? UIWindowScene)?.delegate as? SceneDelegate)?.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0
let screen = UIScreen.main.bounds

struct HomeView: View {
    
    @State var show = false
    @State var showProfile = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            HomeListView()
                .blur(radius: self.show ? 20 : 0)
                .scaleEffect(self.showProfile ? 0.95 : 1.0)
                .animation(.default)
            
            ContentView()
                 .frame(minWidth: 0, maxWidth: 712)
                .cornerRadius(30.0)
                .shadow(radius: 20.0)
                .animation(.spring())
                .offset(x: 0.0, y: self.showProfile ? statusBarHeight + 40.0 : screen.height)
            
            MenuButton(show: self.$show)
                .offset(x: -40.0, y: self.showProfile ? statusBarHeight : 80.0)
                .animation(.spring())
            
            MenuRight(show: self.$showProfile)
                .offset(x: -16.0, y: showProfile ? statusBarHeight : 88.0)
            
            MenuView(show: self.$show)
            
        }
        .background(Color("background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
