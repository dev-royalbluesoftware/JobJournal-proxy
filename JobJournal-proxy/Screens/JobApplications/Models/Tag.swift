//
//
// JobJournal
// Tag.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation
import SwiftUI
import SwiftData

@Model
final class Tag {
    // UUID
    @Attribute(.unique) var id: UUID
    
    var name: String
    
    // Store Tag Color Components in a way that SwiftData can handle
    var colorStorage: TagColorStorage
    
    // Convert between TagColorStorage and SwiftUI Color
    var color: Color {
        get {
            colorStorage.color
        }
        set {
            colorStorage = TagColorStorage(color: newValue)
        }
    }
    
    // MARK: - Relationship to JobApplication
    
    @Relationship(inverse: \JobApplication.tags) var applications: [JobApplication]? = []
    
    // MARK: - Initialization
    
    init(id: UUID = UUID(), name: String, color: Color = .primary) {
        self.id = id
        self.name = name
        self.colorStorage = TagColorStorage(color: color)
    }
}
