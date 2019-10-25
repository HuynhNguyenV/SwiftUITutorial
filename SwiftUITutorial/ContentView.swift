//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Macintosh HD on 10/11/19.
//  Copyright © 2019 Huynh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var nextFullDateMoon = Date()
    
    let fromToday = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
    
    var withinNext30Days: ClosedRange<Date> {
        let today = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
        let next30Days = Calendar.current.date(byAdding: .day, value: 30, to: Date())!
        return today...next30Days
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("DatePicker").font(.largeTitle)
            Text("Min and Max Date Range").foregroundColor(.gray).font(.title)
            
            HStack {
                Spacer(minLength: 60)
                Image(systemName: "moon.circle").font(.title)
                Spacer()
                Circle().frame(height: 60.0)
                Spacer()
                Image(systemName: "moon.circle.fill").font(.title)
                Spacer(minLength: 60)
            }.foregroundColor(.yellow)
            
            Text("Select date of next full moon").font(.title)
            
            DatePicker("", selection: $nextFullDateMoon, in: withinNext30Days, displayedComponents: .date)
                .offset(x: -50, y: 0)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.yellow))
                .padding(.horizontal)
                .shadow(radius: 20, y: 20)
            
            Text("(Valid range only in the next 30 days)").padding(.vertical)
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
