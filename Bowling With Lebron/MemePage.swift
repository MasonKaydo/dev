//
//  MemePage.swift
//  Bowling With Lebron
//
//  Created by mason kaydo on 5/12/26.
//

import SwiftUI

struct MemePage: View {
    @State private var x = Int.random(in: 1...16)
    var body: some View {
        Text("Lebron Memes")
            .padding(10)
        Image("lebron\(x)")
        Button(action: {
            x = Int.random(in: 1...16)
        }) {
            Text("Show Random Meme")
        }
    }
}

#Preview {
    MemePage()
}
