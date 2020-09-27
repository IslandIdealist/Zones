//
//  ContentView.swift
//  Zones
//
//  Created by Matt Jerrard on 9/27/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to Zones!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(.largeTitle, design: .rounded))
            .padding()
        Image("Zones")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
