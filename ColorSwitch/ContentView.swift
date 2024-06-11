//
//  ContentView.swift
//  ColorSwitch
//
//  Created by Dorian Emenir on 05/06/2024.
//

// MARK: Imports
import SwiftUI

// MARK: ContentView's view
struct ContentView: View {
    
    /// `randomColorGenerated`: Color - Selected color from the `colorSwitch()` function from `SwitchColorButton` struct
    @State private var randomColorGenerated: Color = .primary
    
    var body: some View {
        
        ZStack {
            /// Update's the view's background color given the state variable `randomColorGenerated`
            Color(randomColorGenerated)
            
            /// Creates the `SwitchColorButton` instance
            SwitchColorButton(randomColorGenerated: $randomColorGenerated, switchButtonLabel: "Switch", color: .accentColor)
        }
        .ignoresSafeArea() /// Expand the ZStack all screen
    }
}

// MARK: Preview
#Preview {
    ContentView()
}
