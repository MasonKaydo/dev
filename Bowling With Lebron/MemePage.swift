//
//  MemePage.swift
//  Bowling With Lebron
//
//  Created by mason kaydo on 5/12/26.
//

import SwiftUI

struct MemePage: View {
    private var x = Int.random(in: 1...16)
    var body: some View {
        Text("Lebron Memes")
            .padding(10)
     Image("lebron\(x)")
    }
}


func randomMeme(){
    func generateRandomNumber() -> Int {
        return Int.random(in: 1...16)
    }
}

#Preview {
    MemePage()
}
