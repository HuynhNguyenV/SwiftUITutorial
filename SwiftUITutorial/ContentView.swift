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
            Text("ZStack").font(.largeTitle)
            
            Text("Layering & Aligning").foregroundColor(.gray)
            
            Text("ZStacks are great for layering views. For example, putting text on top of an image. You can align all the subviews within the ZStack.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue)
                .foregroundColor(.white)
                
            ZStack(alignment: .bottomTrailing) {
                Image("catalina").resizable().frame(width: 390, height: 200)
                Rectangle()
                    .foregroundColor(.white).opacity(0.5)
                    .frame(width: 390, height: 50)
                Text("Catalina").padding(8)
            }
            ZStack(alignment: .topLeading) {
                Image("catalina").resizable().frame(width: 390, height: 200)
                Rectangle()
                    .foregroundColor(.white).opacity(0.5)
                    .frame(width: 390, height: 50)
                Text("Catalina").padding(8)
            }
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
