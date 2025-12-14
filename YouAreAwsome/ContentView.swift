//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Ethan on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State  private  var imageView = ""
    var body: some View {
        Spacer()
        VStack {
            
            Image(systemName: imageView)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .fontWeight(.heavy)
                
            
        }
        Spacer()
                  
        Button("Press Me!"){
            let message1 = "You Are Awesome"
            let message2 = " You Are Great"
            let imageView1 = "sun.max.fill"
            let imageView2 = "hand.thumbsup.fill"
            
            
            if message == message1 {
                message = message2
                imageView = imageView2
                
            }else {
                message = message1
                imageView = imageView1
                
            }
    
            
            
        }
       
        
        
        
        
        
        .buttonStyle(.borderedProminent)
        .font(.title2)
        .tint(.orange)
        
       
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
}


#Preview {
    ContentView()
}
