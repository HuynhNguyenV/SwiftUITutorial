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
            Section {
                Text("This is a Form").font(.title)
                Text("You Can put any content in here")
                Text("The cells with grow to fit the content")
                Text("Remember, it's just views inside of views")
            }
            
            Section {
                Text("Limitations").font(.title)
                Text("There are build-in margins thar are difficult to get around. Take s look at the color below so you can see where the margins are:")
                Color.green
            }
            
            Section {
                Text("Summary").font(.title)
                Text("Pretty much what you see here is what you get.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
