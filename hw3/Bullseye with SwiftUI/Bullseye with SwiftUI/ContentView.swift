//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
        
    @State var toggle = false
    
    var target: IntegerLiteralType = 25
    
    var body: some View {
        
        VStack() {
            HStack() {
                
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
            }
            .padding(.top, 20)
            .padding(.bottom, 20)
            
            Spacer()
            
            VStack() {
            // "Move slider to text"
            Text("Move slider to:")
                .font(.system(size: 30))
            
            // target string
            Text(String(target))
                .font(.system(size: 30))
            
            Slider(value: $num, in: 0...100)
                .padding(.top, 15)
                .padding(.bottom, 10)
                
            Button("Check") {
                
                }
            }
            
            Spacer()
            
            Toggle("", isOn: $toggle)
                    .labelsHidden()

            // "Exact mode?"
            Text("Exact mode?")
                .font(.system(size: 15))
            
            
            
        }
    }
}
