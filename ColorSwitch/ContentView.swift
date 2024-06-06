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
    
    /// colorSelected : Color - Selected color from the `colorSwitch()` function from `ScreenColorButtons` struct
    @State private var colorSelected: Color = .primary
    
    var body: some View {
        
        ZStack {
            /// Update's the view's background color given the state variable `colorSelected`
            Color(colorSelected)
            
            /// Creates the button calling the `ScreenColorButtons` struct
            ScreenColorButtons(colorSelected: $colorSelected, text: "Switch", color: .accentColor)
        }
        .ignoresSafeArea() /// Expand the ZStack all screen
    }
}

#Preview {
    ContentView()
}
