//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Form {
            Section(header: Text("Seciton Header Text").foregroundColor(.gray).font(.title).bold()) {
                Text("You Can put any content in here")
                Color.pink
                Text("You Can put any content in here")
                Color.pink.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            
            Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")) {
                Text("There are build-in margins thar")
            }
            
            Section(header: Text("Row Inset Uses").font(.title)) {
                Text("Other possible uses could be for indenting")
                Text("Indent Level 1").listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                Text("Indent Level 2").listRowInsets(EdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0))
                Text("Or Vertical Alignment")
                Text("Top").listRowInsets(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                Text("Bottom").listRowInsets(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
            }
            
        }
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
