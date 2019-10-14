//
//  UpdateDetail.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var title = "SwiftUI"
    var text = "Loading..."
    var image = "Illustration1"
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text(self.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Image(self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200.0)
                
            Text(self.text)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
