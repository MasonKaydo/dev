//
//  ContentView.swift
//  Bowling With Lebron
//
//  Created by mason kaydo on 4/17/26.
//

import SwiftUI
import AVKit
import AVFoundation

struct ContentView: View {

    @State private var showVideo = false

    var body: some View {

        VStack {

            Image("Lebron")
                .resizable()
                .scaledToFit()

            Button("Ba Boom Boom Boom") {
                showVideo = true
            }
            .padding()
            .font(.headline)
            .foregroundColor(.purple)
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.purple, lineWidth: 3)
                )
        }
        .fullScreenCover(isPresented: $showVideo) {
            VideoPlayerView()
        }
    }
}

struct VideoPlayerView: View {

    let player: AVPlayer = {

        guard let url = Bundle.main.url(forResource: "lebronVideo", withExtension: "MP4") else {
            fatalError("Video not found")
        }

        return AVPlayer(url: url)

    }()

    var body: some View {

        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear {
                player.play()
            }
    }
}

#Preview {
    ContentView()
}
