//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 04/02/23.
//

import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
