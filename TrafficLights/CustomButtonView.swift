//
//  CustomButtonView.swift
//  TrafficLights
//
//  Created by Maksim Grischenko on 01.07.2022.
//

import SwiftUI

struct CustomButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title)
        }
        .foregroundColor(.white)
        .frame(width: 180, height: 60, alignment: .center)
        .background(Color.blue)
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 25)
            .stroke(Color.white, lineWidth: 4)
        )
        
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(title: "START") {}
    }
}
