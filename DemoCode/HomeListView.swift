//
//  HomeListView.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct Course: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}

let coursesData = [
   Course(title: "Build an app with SwiftUI",
          image: "Illustration1",
          color: Color("background3"),
          shadowColor: Color("backgroundShadow3")),
   Course(title: "Design and animate your UI",
          image: "Illustration2",
          color: Color("background4"),
          shadowColor: Color("backgroundShadow4")),
   Course(title: "Swift UI Advanced",
          image: "Illustration3",
          color: Color("background7"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Framer Playground",
          image: "Illustration4",
          color: Color("background8"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Flutter for Designers",
          image: "Illustration5",
          color: Color("background9"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]


struct HomeListView: View {
    @State var showContent = false
    var courses = coursesData

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Courses")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("22 course")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }.padding(.leading, 60.0)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30.0) {
                        ForEach(self.courses) { (item) in
                            Button(action: {
                                self.showContent.toggle()
                            }) {
                                GeometryReader { (geometry) in
                                    CourseView(title: item.title, image: item.image, color: item.color, shadowColor: item.shadowColor)
                                        .rotation3DEffect(.init(degrees: Double(geometry.frame(in: .global).minX - 30.0) / -40.0), axis: (x: 0.0, y: 10.0, z: 0.0))
                                        .sheet(isPresented: self.$showContent) { ContentView() }
                                }
                                .frame(width: 246.0, height: 360.0)
                            }
                        }
                    }
                    .padding(.leading, 30)
                    .padding(.top, 30)
                    .padding(.bottom, 70)
                    
                    Spacer()
                }
                
                CertificateRow()
            }
            .padding(.top, 78)
        }
    }
}

struct HomeListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
