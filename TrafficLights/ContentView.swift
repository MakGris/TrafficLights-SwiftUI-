//
//  ContentView.swift
//  TrafficLights
//
//  Created by Maksim Grischenko on 01.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleButton = "START"
    @State private var count = 0
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        ZStack (alignment: .top) {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 30) {
                TrafficLightView(opacity: redOpacity, color: .red)
                TrafficLightView(opacity: yellowOpacity, color: .yellow)
                TrafficLightView(opacity: greenOpacity, color: .green)
                Spacer()
                CustomButtonView(title: titleButton) {
                    switch count {
                    case 0:
                        titleButton = "NEXT"
                        greenOpacity = 0.3
                        redOpacity = 1.0
                        count += 1
                    case 1:
                        redOpacity = 0.3
                        yellowOpacity = 1.0
                        count += 1
                    default:
                        yellowOpacity = 0.3
                        greenOpacity = 1.0
                        count = 0
                    }
                }
                .padding(.bottom)
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
