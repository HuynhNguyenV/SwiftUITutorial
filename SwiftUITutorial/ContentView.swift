//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var justTime = Date()
    @State private var theDateAndTime = Date()
    
    var body: some View {
        VStack(spacing: 10){
            Text("DatePicker").font(.largeTitle)
            Text("Displayed Components")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Show date and time parts with displayedComponents.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow)
                .font(.title)
            
            DatePicker("", selection: $justTime, displayedComponents: .hourAndMinute)
            .offset(x: -50, y: 0)
            
            Text("Combine date and time with an array.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow)
                .font(.title)
            
            DatePicker("", selection: $theDateAndTime, displayedComponents: [.date, .hourAndMinute])
                .offset(x: -50, y: 0)
            
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
