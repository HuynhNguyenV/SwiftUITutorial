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
            Text("Spacer").font(.largeTitle)
            Text("Minimum Length")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("You can set a minimum space to exist between views using the minLength modifier on the Spacer.")
                .frame(maxWidth: .infinity).padding()
                .font(.title)
                .background(Color.blue)
                .foregroundColor(.white)
            
            Text("No minLength set (system default is used)").bold()
            
            HStack {
                Image("catalina").resizable().frame(width: 250, height: 100)
                Spacer()
                Text("This is catalina").lineLimit(1)
            }.padding()
            
            Text("minLength = 0").bold()
            
            HStack {
                Image("catalina").resizable().frame(width: 250, height: 100)
                Spacer(minLength: 0)
                Text("This is catalina").lineLimit(1)
            }.padding()
            
            Text("minLength = 40").bold()
            HStack {
                Image("catalina").resizable().frame(width: 250, height: 100)
                Spacer(minLength: 40)
                Text("This is catalina").lineLimit(1)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
