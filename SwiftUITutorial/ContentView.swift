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
        VStack(spacing: 40) {
            Text("HStack").font(.largeTitle)
            Text("Spacing")
                .font(.title)
                .foregroundColor(.gray)
            Text("The HStack initializer allows you to set the spacing between all the views inside the HStack.")
                .frame(maxWidth: .infinity)
                .padding().layoutPriority(1)
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            
            Text("Default Spacing").font(.title)
            
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.font(.largeTitle)
            
            Text("Spacing: 100").font(.title)
            
            HStack(spacing: 100) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.font(.largeTitle)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
