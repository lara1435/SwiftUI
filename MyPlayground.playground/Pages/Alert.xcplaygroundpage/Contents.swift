//: [Previous](@previous) |  [Next](@next)

import SwiftUI
import PlaygroundSupport

struct HomeView: View {
    
    @State private var showAlert1: Bool = false
    @State private var showAlert2: Bool = false
    
    var body: some View {
        
        NavigationView() {
            
            VStack() {
                Toggle(isOn: $showAlert1, label: {
                    Text("show Alert 1")
                })  .padding()
                    .presentation($showAlert1, alert: {
                        Alert(title: Text("Alert 1"), message: Text("Message 1"), dismissButton: .cancel())
                    })
                
                Button(action: {
                    self.showAlert2 = true
                }) {
                    Text("Show Alert 2")
                }.presentation($showAlert2, alert: {
                    Alert(title: Text("Alert 2"), message: Text("Message 2"), primaryButton: .destructive(Text("Destructive"), onTrigger: {
                        print("Destructive button tapped")
                    }), secondaryButton: .cancel())
                })
            }
           
            .navigationBarTitle(Text("Home"), displayMode: .inline)
        }
        
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: HomeView())

