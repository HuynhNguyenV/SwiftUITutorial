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
            Text("GeometryReader").font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("GeometryReader is a container view that pushes out to fill up all available space.")
                .frame(maxWidth: .infinity).padding()
                .layoutPriority(1)
            
            GeometryReader { geometry in
                VStack {
                    Text("geometry: \(geometry.safeAreaInsets.leading)")
                    Text("geometry: \(geometry.safeAreaInsets.trailing)")
                    Text("geometry: \(geometry.safeAreaInsets.top)")
                    Text("geometry: \(geometry.safeAreaInsets.bottom)")
                }.foregroundColor(.white)
            }
            .background(Color.pink)
        }
        .font(.title)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
