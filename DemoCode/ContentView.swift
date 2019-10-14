//
//  ContentView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            BlurView(style: .systemMaterial)
            
            TitleView()
                .blur(radius: self.show ? 20.0 : 0.0)
                .animation(.default)
            
            CardBottomView()
                .blur(radius: self.show ? 20 : 0)
                .animation(.default)
            
            CardView()
                .background(self.show ? Color.red : Color("background9"))
                .cornerRadius(10.0)
                .shadow(radius: 20.0)
                .offset(x: 0.0, y: self.show ? -400.0 : -40.0)
                .scaleEffect(0.85)
                .rotationEffect(.init(degrees: self.show ? 15.0 : 0.0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.6))
                .offset(x: self.viewState.width, y: self.viewState.height)
            
            CardView()
                .background(self.show ? Color("background5") : Color("background8"))
                .cornerRadius(10.0)
                .offset(x: 0.0, y: self.show ? -200.0 : -20.0)
                .scaleEffect(0.9)
                .rotationEffect(.init(degrees: self.show ? 10.0 : 0.0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.4))
                .offset(x: self.viewState.width, y: self.viewState.height)
            
            CertificateView()
                .offset(x: self.viewState.width, y: self.viewState.height)
                .scaleEffect(0.95)
                .rotationEffect(.init(degrees: self.show ? 5.0 : 0.0))
                .animation(.spring())
                .onTapGesture {
                    self.show.toggle()
                }
                .gesture(
                    DragGesture.init()
                        .onChanged({ (value) in
                            self.viewState = value.translation
                            self.show = true
                        })
                        .onEnded({ (_) in
                            self.viewState = CGSize.zero
                            self.show = false
                        })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
