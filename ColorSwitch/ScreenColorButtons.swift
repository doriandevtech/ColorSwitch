//
//  ScreenColorButtons.swift
//  ColorSwitch
//
//  Created by Dorian Emenir on 06/06/2024.
//

// MARK: Imports
import SwiftUI

// MARK: ScreenColorButtons's view
struct ScreenColorButtons: View {
    
    /// `colorSelected - Color: color shown on screen and binned to the state variable
    @Binding var colorSelected: Color
    
    /// `text` - String: text displayed on the button
    var text: String
    
    /// `color` - Color: button's foreground color
    var color: Color

    var body: some View{
        
        Button(action: {
            colorSelected = colorSwitch()
        }, label: {
            Text(text)
                .padding(32)
        })
        .foregroundStyle(color)
        
    }
    
    /// `colorSwitch()` generates a random color according to the RGB color configuration
    /// - Returns: A generated random color resulting of a combinaison of red, green and blue
    func colorSwitch() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: (0...1)))
    }
}

// MARK: Preview
#Preview {
    ScreenColorButtons(colorSelected: .constant(.blue), text: "Switch color", color: .red)
}
