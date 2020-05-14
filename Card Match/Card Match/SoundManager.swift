//
//  SoundManager.swift
//  Card Match
//
//  Created by Scout Crooke on 5/11/20.
//  Copyright © 2020 Scout Crooke. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    static var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        
        case flip
        case shuffle
        case match
        case nomatch
    }
    
    static func playSound(_ effect:SoundEffect) {
        
        var soundFilename = ""
        
        // Determine which sound effect we want to play
        // And set the appropriate fliename
        switch effect {
            
        case .flip:
            soundFilename = "cardflip"
            
        case .shuffle:
            soundFilename = "shuffle"
        
        case .match:
            soundFilename = "dingcorect"
            
        case .nomatch:
            soundFilename = "dingwrong"
        }
        
        // Get the path to the sound fine inside the bundle
        let bundlePath = Bundle.main.path(forResource: soundFilename, ofType: "wav")
        
        guard bundlePath != nil else {
            print("Couldn't find sound file \(soundFilename)")
            return
        }
        
        // Create a URL object form this string path
        let SoundURL = URL(fileURLWithPath: bundlePath!)
        
        do {
            // Create audio player object
            audioPlayer = try AVAudioPlayer(contentsOf: SoundURL)
            
            // Play the sound
            audioPlayer?.play()
        }
        catch {
            // Couldn't create audio player object, log the error
            print("Coudln't create the audio player object for sound file \(soundFilename)")
        }
        
    }
    
}
