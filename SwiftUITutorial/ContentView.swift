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
            Text("Vertical Alignment")
                .font(.title)
                .foregroundColor(.gray)
            Text("Be default, views within an HStack are vertically aligned in the center.")
                .frame(maxWidth: .infinity)
                .padding().layoutPriority(1)
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            
            HStack {
                Rectangle().foregroundColor(Color.blue).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing").padding(.trailing)
            }.border(Color.blue)
            
            HStack(alignment: .top) {
                Rectangle().foregroundColor(Color.blue).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing").padding(.trailing)
            }.border(Color.blue)
            
            HStack(alignment: .bottom) {
                Rectangle().foregroundColor(Color.blue).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing").padding(.trailing)
            }.border(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
