//
//  RedLightView.swift
//  TrafficLights
//
//  Created by Maksim Grischenko on 01.07.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let opacity: Double
    let color: Color
    
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct RedLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(opacity: 0.3, color:.blue)
    }
}
