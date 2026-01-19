//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Ethan on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.system(size: 34, weight: .semibold, design: .rounded))
                .multilineTextAlignment(.center)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .red, .orange],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .padding(.horizontal, 24)
                .frame(maxWidth: .infinity, minHeight: 120)
                .animation(.easeInOut(duration: 0.2), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 320
                )
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 28,
                        style: .continuous
                    )
                )
                .padding(.horizontal, 20)
                .shadow(color: .black.opacity(0.25), radius: 18, x: 0, y: 10)
                .animation(
                    .spring(response: 0.35, dampingFraction: 0.8),
                    value: imageName
                )
            
            
            
            
            
            
            
        }
        Spacer()
        
        Button("Show Message"){
            var messages = ["You Are Great",
                            "Fnastastic",
                            "YOO",
                            "You Make Me Smile!",
                            "When the Genius Bar Needs Help, They Call You!","Perfect","Humble","Happy"]
            var messageNumber = Int.random(in: 0...messages.count-1)
            while messageNumber == lastImageNumber{
                messageNumber = Int.random(in: 0...messages.count-1)
            }
            message = messages[messageNumber]
            lastImageNumber = messageNumber
            
            var imageNumber = Int.random(in: 0...9)
            while imageNumber == lastImageNumber{
                imageNumber = Int.random(in: 0...9)
            }
            
            imageName = "image\(imageNumber)"
            lastImageNumber = imageNumber
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        .buttonStyle(.borderedProminent)
        .font(.title2)
        .font(.title3)
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
        .background(
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .foregroundColor(.white)
        .cornerRadius(14)
        .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 4)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
}


#Preview {
    ContentView()
}
