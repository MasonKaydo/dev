//
//  MemePage.swift
//  Bowling With Lebron
//
//  Created by mason kaydo on 5/12/26.
//

import SwiftUI

struct MemePage: View {
    private var x = randomMeme()
    var body: some View {
        
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
