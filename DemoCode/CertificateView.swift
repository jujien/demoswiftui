//
//  CertificateView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct CertificateView: View {
    
    var item = Certificate(title: "UI Design", image: "Certificate1", width: 340, height: 220)
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(self.item.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    
                    Text("Certificate")
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Image(self.item.image)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .offset(y: 50)
        }
        .frame(width: CGFloat(item.width), height: CGFloat(item.height))
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView()
    }
}
