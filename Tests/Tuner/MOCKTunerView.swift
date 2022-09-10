//
//  MockTuner.swift
//  HarmonicaToolkit
//
//  Created by Richard Hardy on 10/09/2022.
//

/*
struct TunerData : Tuner {
    var pitch: Float = 0.0
    var amplitude: Float = 0.0
    var noteName = "-"
    var pianoKey : Int = 0
    var lastNotes : [noteDetail] = []
 */

import Foundation

class TunerConductor: ObservableObject {
    
    
    @Published var data = TunerData()
    
    
    let noteFrequencies  = [16.35, 17.32, 18.35, 19.45, 20.6, 21.83, 23.12, 24.5, 25.96, 27.5, 29.14, 30.87]
    var amplitude = 1
    var noteName = "-"
    var pianoKey = 0
    var lastNotes : [noteDetail] = []
    
    let sustain = 5
    
    
    for octave in (0...8) {
        for frequency in noteFrequencies {
            for duration in (0...sustain) {
                print ("Pitch: ", frequency)
                print ("Pitch for octave:", frequency * octave)
                
                data.pitch = frequency * octave
                data.amplitude = amplitude
                data.noteName = noteName
                data.pianoKey = pianoKey
                data.lastNotes = lastNotes.append(noteName)
            }
            
        }
    }
}

