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
            Text("Layout Priority")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use the layout priority modifier to give priority to the space a view needs to show its content.")
                .frame(maxWidth: .infinity)
                .padding().layoutPriority(1)
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
            
            Text(".layoutPriority(1) is set on 'Brings Balance'").font(.subheadline)
            
            HStack {
                Text("SwiftUI").font(.largeTitle).lineLimit(1)
                Image(systemName: "pencil.circle.fill")
                    .resizable() // fill size
                    .frame(width: 80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .layoutPriority(1)
            }.padding(.horizontal)
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .layoutPriority(1)
                Image(systemName: "pencil.circle.fill")
                    .resizable() // fill size
                    .frame(width: 80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .lineLimit(1)
            }.padding(.horizontal)
            
            Text(".layoutPriority(1) is set on 'SwiftUI'").font(.subheadline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
