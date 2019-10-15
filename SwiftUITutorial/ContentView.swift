//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var nextFullMoonDate = Date()
    
    var body: some View {
        VStack(spacing: 20){
            Text("DatePicker").font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Binf a date variable to get and set the date in the date picker")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow)
                .font(.title)
            
            Text("Next Full Moon").font(.largeTitle)
            
            HStack {
                Spacer(minLength: 50)
                Image(systemName: "moon.circle")
                Spacer()
                Circle().frame(height: 60.0)
                Spacer()
                Image(systemName: "moon.circle.fill")
                Spacer(minLength: 50)
            }.font(.largeTitle)
                .foregroundColor(.yellow)
            
            Text("Date of next full moom")
            
            DatePicker("", selection: $nextFullMoonDate, displayedComponents: .date)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
