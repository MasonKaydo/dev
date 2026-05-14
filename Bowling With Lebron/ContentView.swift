//
//  ContentView.swift
//  Bowling With Lebron
//
//  Created by mason kaydo on 4/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("Lebron").scaledToFill().ignoresSafeArea()
                    .foregroundStyle(.tint)
                NavigationLink("Go To Next Screen") {
                    MemePage()
                }
                .padding()
            }
        }
    }
}
#Preview {
    ContentView()
}
