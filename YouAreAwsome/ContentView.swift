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
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                Spacer()
            
            HStack {
                Button("Awsome"){
                    print(message)
                    message = "Awsome!"
                    
                }
                
                
                Button("Great!"){
                    print(message)
                    message = "Great!"
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
            
            
            
            
            
            
            
            
            
            
        }
        // New Stuff Here !
        .padding()
    }
}

#Preview {
    ContentView()
}
