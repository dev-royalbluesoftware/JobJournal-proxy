//
//
// JobJournal
// TagColorStorage.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct TagColorStorage: Codable {
    
    // Colors
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    var opacity: CGFloat
    
    // Initialize for a SwiftUI Color
    init(color: Color) {
        let components = color.rgba
        self.red = components.red
        self.green = components.green
        self.blue = components.blue
        self.opacity = components.opacity
    }
    
    // Convert back to SwiftUI Color
    var color: Color {
        Color(red: red, green: green, blue: blue, opacity: opacity)
    }
}

// MARK: - Color Extension

extension Color {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, opacity: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0
        
        return (red, green, blue, opacity)
    }
}
