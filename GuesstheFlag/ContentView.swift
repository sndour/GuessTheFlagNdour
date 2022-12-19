//
//  ContentView.swift
//  GuesstheFlag
//
//  Created by Stéphane Adefemi NDOUR on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Button("Button 1") { }
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive) { }
                        .buttonStyle(.bordered)
                    Button("Button 3") { }
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                    Button("Button 4", role: .destructive) { }
                        .buttonStyle(.borderedProminent)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
