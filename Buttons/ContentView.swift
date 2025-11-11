//
//  ContentView.swift
//  Buttons
//
//  Created by Carlos Antonio dos Santos on 10/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    
    var body: some View {
        VStack {
            Text("What.s So Funny 'Bout")
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .foregroundStyle(.black)
                
            Text(message)
            Spacer()
            
            HStack{
                Button("Peace") {
                    image = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    image = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    image = "lightbulb"
                    message = "Understanding"
                }
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(Color.purple)
            .foregroundStyle(.white)
        }
        .padding()
        .foregroundStyle(.purple)
        .font(.largeTitle)
        .fontWeight(.black)
    }
}

#Preview {
    ContentView()
}
