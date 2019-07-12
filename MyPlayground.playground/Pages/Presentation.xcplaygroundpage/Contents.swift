//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct FirstView: View {
    
    var body: some View {
        
        NavigationView() {
            PresentationLink(destination: SecondView(), label: {
                Text("Present")
            })
            .navigationBarTitle(Text("Home"), displayMode: .inline)
        }
        
        
    }
}

struct SecondView: View {
    
    var body: some View {
        
        Text("Hello")
        
    }
}
//: [Next](@next)
