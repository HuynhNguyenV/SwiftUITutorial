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
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("ZStack").font(.largeTitle)
                Text("Edges Ignoring Safe Area").foregroundColor(.white)
                
                Text("Having the ZStack edges ignoring the safe areas might be a mistake if you don't want other layers' edges to also ignore the safe areas. You notice that the top Text view is completely under the notch.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                Spacer()
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
