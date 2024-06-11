//
//  SwitchColorButton.swift
//  ColorSwitch
//
//  Created by Dorian Emenir on 06/06/2024.
//

// MARK: Imports
import SwiftUI

// MARK: SwitchColorButton's view
struct SwitchColorButton: View {
    
    /// `randomColorGenerated`: Color - color shown on screen and binned to the state variable
    @Binding var randomColorGenerated: Color
    
    /// `switchButtonLabel`: String - label displayed on the button
    var switchButtonLabel: String
    
    /// `color`: Color - button's foreground color
    var color: Color

    var body: some View{
        
        Button(action: {
            randomColorGenerated = colorSwitch()    /// Affects the `colorSwitch()`returns to the `randomColorGenerated` variable
        }, label: {
            Text(switchButtonLabel)
                .padding(32)
        })
        .foregroundStyle(randomColorGenerated)      /// Applies the `randomColorGenerated`as the button's color
        .colorInvert()                              /// Inverts the button's color regarding the `randomColorGenerated` value returned
        
    }
    
    /// `colorSwitch()` generates a random color according to the RGB color configuration
    /// - Returns: A generated random color resulting of a combinaison of red, green and blue
    func colorSwitch() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: (0...1)))
    }
}

// MARK: Preview
#Preview {
    SwitchColorButton(randomColorGenerated: .constant(.blue), switchButtonLabel: "Switch color", color: .red)
}
