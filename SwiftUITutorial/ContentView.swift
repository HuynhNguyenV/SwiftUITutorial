//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var dateInForm = Date()
    
    var body: some View {
        Form {
            Section(header: Text("DatePicker").font(.largeTitle).padding()) {
                Text("Used In Forms")
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding()
                
                Text("The date picker looks differently when used in a form. The first parameter called 'title' is used when in forms and lists.")
                    .frame(maxWidth: .infinity)
                    .padding().listRowBackground(Color.yellow)
                    .font(.title)
                
                DatePicker("DatePicker Collapsed (Default)", selection: $dateInForm, displayedComponents: .date)
                DatePicker("DatePicker Collapsed (Selected)", selection: $dateInForm, displayedComponents: .date)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
