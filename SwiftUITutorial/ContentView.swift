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
            Section(header: Text("Seciton Header Text")) {
                Text("You Can put any content in here")
                Text("The cells with grow to fit the content")
            }
            
            Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")) {
                Text("There are build-in margins thar are difficult to get around. Take s look at the color below so you can see where the margins are:")
            }
            
            Section(header: Text(""), footer: Text("Total: $5000.00").bold()) {
                Text("Pretty much what you see here is what you get.")
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
