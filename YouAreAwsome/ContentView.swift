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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var index = -1
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height:130)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.horizontal, 20)
                .shadow(radius: 100)
                .animation(.default, value: imageName)
            
            
           
          
            
                 
            
            
        }
        Spacer()
                  
        Button("Show Message"){
            let messages = ["You Are Great",
                            "I Am Awesome"
                            ,"Fnastastic",
                             "YOO",
                             "You Make Me Smile!",
                            "When the Genius Bar Needs Help, They Call You!","Perfect","Humble","Happy"]
            
            message = messages[Int.random(in: 0...messages.count-1)]
           
           
            imageName = "image\(Int.random(in: 0...9))"
            

            
            
            
            
            
    
            
            
        }
       
        
        
        
        
        
        .buttonStyle(.borderedProminent)
        .font(.title2)
        
        
       
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
}


#Preview {
    ContentView()
}
