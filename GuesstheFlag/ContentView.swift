//
//  ContentView.swift
//  GuesstheFlag
//
//  Created by Stéphane Adefemi NDOUR on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert: Bool = false
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
//            Button("OK") { }
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
