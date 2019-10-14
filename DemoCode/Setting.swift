//
//  Setting.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct Setting: View {
    @State var receive = false
    @State var number = 1
    @State var selection = 1
    @State var date = Date()
    @State var email = ""
    @State var submit = false
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: self.$receive) {
                    Text("\(self.number) Notification\(self.number > 1 ? "s" : "") per week")
                }
                
                Stepper(value: self.$number, in: 1...10) {
                    Text("\(self.number) Notification\(self.number > 1 ? "s" : "") per week")
                }
                
                Picker(selection: self.$selection, label: Text("Favourite course")) {
                    Text("SwiftUI").tag(1)
                    Text("React").tag(2)
                }
                
                DatePicker(selection: self.$date) {
                    Text("Date")
                }
                
                Section(header: Text("Email")) {
                    TextField("Your email: ", text: self.$email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Button(action: {
                    self.submit.toggle()
                }) {
                    Text("Submit")
                }
                .alert(isPresented: self.$submit) {
                    Alert(title: Text("Thanks"), message: Text("Email: \(self.email)"))
                }
            }
            .navigationBarTitle("Setting")
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
