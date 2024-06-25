//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var  scale: CGFloat = 1.0
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Text("Hello Playground")
                .font(.title)
                .foregroundColor(Color(.systemGray2))
            
            Circle()
                .fill(Color(.systemBlue))
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .onTapGesture {
                    withAnimation{
                        self.isAnimating.toggle()
                        self.scale = self.isAnimating ? 1.5 : 1.0
                    }
                }
                .padding()
        }
    }
}

let content = ContentView()
PlaygroundPage.current.setLiveView(content)

//: [Next](@next)
