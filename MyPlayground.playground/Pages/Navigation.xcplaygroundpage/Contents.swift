



//: [Next](@next)



import SwiftUI
import PlaygroundSupport

struct FirstView: View {
    
    var body: some View {
        
        NavigationView() {
            NavigationLink(destination: SecondView(), label: {
                Text("Next")
            })
            .navigationBarTitle(Text("First"), displayMode: .inline)
        }
        
        
    }
}

struct SecondView: View {
    
    var body: some View {
        
        Text("Hello")
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: FirstView())


