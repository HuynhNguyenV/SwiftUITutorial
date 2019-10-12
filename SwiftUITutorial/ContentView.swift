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
        VStack(spacing: 20) {
            Text("Spacer").font(.largeTitle)
            Text("Evenly Spaced").foregroundColor(.gray)
            
            Text("Use Spacer to envenly space views horizontally so they look good on any device.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Text("Before")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Names").underline()
                    Text("Chase")
                    Text("Rodrigo")
                    Text("Mark")
                    Text("Evans")
                }.layoutPriority(1)
                VStack (alignment: .leading) {
                    Text("Color").underline()
                    Text("Red")
                    Text("Orange")
                    Text("Green")
                    Text("Blue")
                }.layoutPriority(1)
            }
            
            Text("After")
            .frame(maxWidth: .infinity).padding()
            .background(Color.green)
            
            HStack {
                Spacer()
                VStack (alignment: .leading) {
                    Text("Names").underline()
                    Text("Chase")
                    Text("Rodrigo")
                    Text("Mark")
                    Text("Evans")
                }.layoutPriority(1)
                
                Spacer()
                
                VStack (alignment: .leading) {
                    Text("Color").underline()
                    Text("Red")
                    Text("Orange")
                    Text("Green")
                    Text("Blue")
                }.layoutPriority(1)
                
                Spacer()
            }
            
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
