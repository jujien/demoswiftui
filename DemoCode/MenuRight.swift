//
//  MenuRight.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct MenuRight: View {
    @Binding var show: Bool
    @State var showUpdate = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                Spacer()
                
                Button(action: {
                    self.show.toggle()
                }) {
                    CircleButton(icon: "person.crop.circle")
                }
                
                Button(action: {
                    self.showUpdate.toggle()
                }) {
                    CircleButton(icon: "bell")
                        .sheet(isPresented: self.$showUpdate) {
                            UpdateList()
                    }
                }
            }
        }
    }
}

struct MenuRight_Previews: PreviewProvider {
    static var show = Binding<Bool>.init(get: { () -> Bool in
        return false
    }) { (value) in
        
    }
    static var previews: some View {
        MenuRight(show: Self.show)
    }
}
