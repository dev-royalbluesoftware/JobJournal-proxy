//
//
// JobJournal
// StatusUpdate.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation
import SwiftUI
import SwiftData

@Model
final class StatusUpdate {
    // UUID
    @Attribute(.unique) var id: UUID
    
    var date: Date
    var previousStatus: ApplicationStatus
    var newStatus: ApplicationStatus
    var notes: String
    
    // MARK: - Relationship back to JobApplication
    
    @Relationship(deleteRule: .nullify) var jobApplication: JobApplication?
    
    // MARK: - Initialization
    
    init(id: UUID = UUID(),
         date: Date = Date(),
         previousStatus: ApplicationStatus,
         newStatus: ApplicationStatus,
         notes: String) {
        
        self.id = id
        self.date = date
        self.previousStatus = previousStatus
        self.newStatus = newStatus
        self.notes = notes
    }
}
