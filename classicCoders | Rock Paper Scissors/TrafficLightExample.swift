// Exploring Enums

/*  TrafficLightExample.swift
  classicCoders | Rock Paper Scissors

  Created by Andrea Powell on 11/19/24.


import Foundation

enum TrafficSignal: String {
    case red = "Red"
    case green = "Green"
    case yellow = "Yellow"
    
    var direction: String {
        switch signal {
        case .red:
            "STOP"
        case .green:
            "GO"
        case .yellow:
            "WAIT"
        }
    }
    
    
}

func direction(for signal: TrafficSignal, arePedestriansCrossing: Bool) -> String {
    switch signal {
    case .red:
        "STOP"
    case .green:
        "GO"
    case .yellow:
        "WAIT"
    }
}

let greenLight = TrafficSignal.green
print(greenLight.rawValue)

if let userInput = readLine() {
    if let validSignal = TrafficSignal(rawValue: userInput) {
        print(validSignal.direction)
    }
} */
