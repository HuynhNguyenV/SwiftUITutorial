//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn = true
    @State private var textFieldData = "This is a text field"

    var body: some View {
        Form {
            Section(header: SectionHeader(name: "Controls in a Form")) {
                Text("This will give you an idea of how different controls are rendered in a From")
            }
            Section {
                Button(action: {}) {Text("Button")}
                Toggle(isOn: $isOn) {Text("Toggle")}
                Stepper(onIncrement: {}, onDecrement: {}) {
                    Text("Stepper")
                }
                TextField("", text: $textFieldData).textFieldStyle(RoundedBorderTextFieldStyle())
                Image(systemName: "leaf.arrow.circlepath").font(.title)
                Circle()
                Text("Notice shapes are centered ☝􏰀")
                
            }
        }
    }
}

struct SectionHeader: View {
    var name: String
    
    var body: some View {
        Text(name)
            
            .font(.largeTitle)
            .foregroundColor(.gray)
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
