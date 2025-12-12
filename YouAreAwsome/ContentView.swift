//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Ethan on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awsome")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color(.red))
        }
        // New Stuff Here !
        .padding()
    }
}

#Preview {
    ContentView()
}
