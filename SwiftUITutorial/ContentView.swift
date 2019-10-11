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
            Text("HStack").font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("HStacks are views tha contain other views laid out horizontally.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
                .layoutPriority(1)
            HStack {
                Text("Leading")
                Text("Moddle")
                Text("Trailing")
            }
            .padding()
            .border(Color.blue)
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle).padding()
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.blue))
            .foregroundColor(.white)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
