//
//
// JobJournal
// InterviewRound.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import Foundation
import SwiftUI
import SwiftData

@Model
final class InterviewRound {
    // UUID
    @Attribute(.unique) var id: UUID
    
    var roundNumber: Int
    var date: Date?
    var interviewType: InterviewType       // Phone, Video, In-Person, Technical, etc
    var interviewer: String?
    var notes: String?
    var followUpDate: Date?
    var outcome: InterviewOutcome
    
    // MARK: - Relationship back to JobApplication
    
    @Relationship(deleteRule: .nullify) var jobApplication: JobApplication?
    
    // MARK: - Initialization
    
    init(id: UUID = UUID(),
         roundNumber: Int,
         date: Date? = nil,
         interviewType: InterviewType = .video,
         interviewer: String? = nil,
         notes: String? = "",
         followUpDate: Date? = nil,
         outcome: InterviewOutcome = .successful) {
        
        self.id = id
        self.roundNumber = roundNumber
        self.date = date
        self.interviewType = interviewType
        self.interviewer = interviewer
        self.notes = notes
        self.followUpDate = followUpDate
        self.outcome = outcome
    }
}
