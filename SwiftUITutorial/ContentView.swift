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
        VStack(spacing: 10) {
            Text("Button").font(.largeTitle)
            
            Button("Default Button Style") {
                
            }
            Divider()
            Button(action: {
                print("Headline Font")
            }) {
                Text("Headline Font").font(.headline)
            }
            Divider()
            
            Button(action: {
                print("Foreground Color")
            }){
                Text("Foreground Color").foregroundColor(.red)
            }
            Divider()
            Button(action: {
                print("Thin Font Weight")
            }) {
                Text("Thin Font Weight").fontWeight(.thin)
            }
            
            
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
