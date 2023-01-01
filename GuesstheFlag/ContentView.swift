//
//  ContentView.swift
//  GuesstheFlag
//
//  Created by Stéphane Adefemi NDOUR on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .topLeading, endPoint: .bottomTrailing )
//            .ignoresSafeArea()
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200 )
//                    .ignoresSafeArea( )
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center )
                    .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
