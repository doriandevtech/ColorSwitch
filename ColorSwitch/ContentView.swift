//
//  ContentView.swift
//  ColorSwitch
//
//  Created by Dorian Emenir on 05/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Button(action: {
                let color = colorSwitch()
            }, label: {
                Text("Switch")
            })
            .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding()
        .background(Color.red)
    }
    
    func colorSwitch() -> Color {
        return Color(
            red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)
        )
    }
}

#Preview {
    ContentView()
}
