//
//  UpdateList.swift
//  DemoCode
//
//  Created by jujien on 10/12/19.
//  Copyright © 2019 jujien. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var updates = updateData
    
    @ObservedObject var store = UpdateStore(updates: updateData)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.store.updates) { (item) in
                    NavigationLink(destination: UpdateDetail(title: item.title, text: item.text, image: item.image)) {
                        HStack(spacing: 12.0) {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80.0, height: 80.0)
                                .background(Color("background"))
                                .cornerRadius(20.0)
                            
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.headline)
                                
                                Text(item.text)
                                    .lineLimit(2)
                                    .lineSpacing(4.0)
                                    .font(.subheadline)
                                    .frame(height: 50.0)
                                
                                Text(item.date)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                
                            }
                        }
                    }
                    .padding(.vertical, 8.0)
                }
                .onDelete { (index) in
                    self.store.updates.remove(at: index.first!)
                }
                .onMove(perform: self.move)
            }
            .navigationBarTitle(Text("Updates"))
            .navigationBarItems(leading: Button(action: addUpdate) { Text("Add Update") },
               trailing: EditButton()
            )
        }
    }
    
    func addUpdate() {
        self.store.updates.append(Update(image: "Certificate1", title: "New Title", text: "New Text", date: "JUL 1"))
    }
    
    func move(from source: IndexSet, to destination: Int) {
        self.store.updates.swapAt(source.first!, destination)
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}
