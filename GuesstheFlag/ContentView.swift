//
//  ContentView.swift
//  GuesstheFlag
//
//  Created by Stéphane Adefemi NDOUR on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    func executeDelete() {
        print("Now deleting")
    }
    
    var body: some View {
        Button("Delete selection", action: executeDelete)
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
