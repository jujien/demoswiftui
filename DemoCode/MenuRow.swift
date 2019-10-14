//
//  MenuRow.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    
    var image = "creditcard"
    var text = "My Account"
    
    var body: some View {
        HStack {
            Image(systemName: self.image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32.0, height: 32.0)
            
            Text(self.text)
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
