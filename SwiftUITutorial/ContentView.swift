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
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack").font(.largeTitle)
                Text("Introduction").foregroundColor(.white)
                
                Text("ZStacks are great for setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    
                Text("But notice the Color stops at the Safe Areas (white areas on top and botom).")
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .padding()
                    .background(Color.yellow)
            }
            .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
