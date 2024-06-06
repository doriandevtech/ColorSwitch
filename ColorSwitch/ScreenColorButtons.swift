//
//  ScreenColorButtons.swift
//  ColorSwitch
//
//  Created by Dorian Emenir on 06/06/2024.
//

import SwiftUI

struct ScreenColorButtons: View {
    
    @Binding var colorSelected: Color
    
    var text: String
    var color: Color

    var body: some View{
        
        Button(action: {
            colorSelected = colorSwitch()
        }, label: {
            Text(text)
        })
        .foregroundStyle(color)
        
    }
    
    func colorSwitch() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: (0...1)))
    }
}

#Preview {
    ScreenColorButtons(colorSelected: .constant(.blue), text: "Blue", color: .red)
}
