//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Ethan on 10/12/25.
//

import SwiftUI

struct ContentView: View {
  @State  var message = "I Am A Programmer!"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color(.red))
            Button("Click Me!"){
                print(message)
                message = "Awsome!"
            }
        }
        // New Stuff Here !
        .padding()
    }
}

#Preview {
    ContentView()
}
