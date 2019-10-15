//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var arrivalDate = Date()
    
    let fromToday = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
    
    
    
    var body: some View {
        VStack(spacing: 10) {
            Text("DatePicker").font(.largeTitle)
            Text("From Date or Time")
                .font(.title).foregroundColor(.gray)
            
            Image("catalina")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
            
            Text("Arrival Date").font(.title)
            
            DatePicker("", selection: $arrivalDate, in: fromToday..., displayedComponents: .date)
                .offset(x: -50, y: 0)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.init(ColorCommon.pinkCustom))
                    
                .padding(.horizontal))
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
