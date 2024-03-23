//
//  SoundModel.swift
//  MSA
//
//  Created by ADMIN UNACH on 07/03/24.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case coins
        case gesture
        case mapa
        case menu
        case nivel
        case popup
    }
    
    func playSound(sound: SoundOption){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
    func stopSound() {
        player?.stop()
    }
        
    
}
