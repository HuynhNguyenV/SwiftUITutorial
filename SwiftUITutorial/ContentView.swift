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
            VStack(spacing: 10) {
                Text("Button").font(.largeTitle)
                
                Button(action: { print("New User") }) {
                    VStack {
                        Text("New User").font(.title)
                        Text("(Register Here)")
                    }
                }
                
                Button(action: { print("Forgot Password") }) {
                    HStack {
                        Text("Forgot Password?").foregroundColor(.black)
                        Text("Tap to Recover").foregroundColor(.blue)
                    }.font(.title)
                }
                
                HStack {
                    Button(action: {}) {
                        Text("Solid Button")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {}) {
                        Text("Border Button")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2))
                    }
                }
                
                Button(action: {}) {
                    Text("Button With Rounded Ends")
                        .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(.infinity)
                }
                
                HStack {
                    Button(action: {}) {
                        HStack {
                            Text("Symbol").padding(.horizontal)
                            Image(systemName: "gift.fill")
                        }.padding()
                    }
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search").padding(.horizontal)
                        }.padding()
                    }
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(.infinity)
                }
                
                Button(action: {}) {
                    VStack {
                        Image(systemName: "video.fill")
                        Text("Record").padding(.horizontal)
                    }.padding()
                }
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(.infinity)
                
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "plus").font(.largeTitle)
                    }
                    .padding(20)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(.infinity)
                }.padding(.trailing, 30)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
