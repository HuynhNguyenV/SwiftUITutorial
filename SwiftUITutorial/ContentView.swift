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
            Text("GeometryReader").font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("GeometryReader is a container view that pushes out to fill up all available space. You use it to help with positioning items within it.")
                .frame(maxWidth: .infinity).padding()
            
            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("Width: \(geometry.frame(in: CoordinateSpace.local).origin.x)")
                    Text("Height: \(geometry.frame(in: CoordinateSpace.local).origin.y)")
                }.foregroundColor(.white)
            }
            .background(Color.pink)

            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("Width: \(geometry.frame(in: .global).origin.x)")
                    Text("Height: \(geometry.frame(in: .global).origin.y)")
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
