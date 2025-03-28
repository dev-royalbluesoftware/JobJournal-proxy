//
//
// JobJournal
// JobApplication.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import Foundation
import SwiftData

@Model
final class JobApplication {
    // UUID
    @Attribute(.unique) var id: UUID
    
    // Job Details
    var companyName: String
    var positionTitle: String
    var location: String?    // Remote, Hybrid, In-Office, City, etc
    var employmentType: EmploymentType
    var workMode: WorkMode
    var salary: Double?
    
    // Application Tracking
    var applicationURL: String
    var applicationStatus: ApplicationStatus
    var dateApplied: Date?
    var lastUpdated: Date?
    
    // Application Management
    var notes: String
    var followUpDate: Date?
    var interviewDate: Date?
    var contactPerson: String?
    var contactEmail: String?
    
    // MARK: - Relationships - Interview Rounds and Status Updates
    
    @Relationship(deleteRule: .nullify) var interviewRounds: [InterviewRound]? = []
    @Relationship(deleteRule: .nullify) var statusUpdates: [StatusUpdate]? = []
    @Relationship var tags: [Tag]? = []
    
    // MARK: - Initialization
    
    init(id: UUID = UUID(),
         companyName: String,
         positionTitle: String,
         location: String? = nil,
         employmentType: EmploymentType = .fullTime,
         workMode: WorkMode = .remote,
         salary: Double? = nil,
         applicationURL: String,
         applicationStatus: ApplicationStatus = .notApplied,
         dateApplied: Date? = nil,
         lastUpdated: Date? = nil,
         notes: String = "",
         followUpDate: Date? = nil,
         interviewDate: Date? = nil,
         contactPerson: String? = nil,
         contactEmail: String? = nil) {
        
        self.id = id
        self.companyName = companyName
        self.positionTitle = positionTitle
        self.location = location
        self.employmentType = employmentType
        self.workMode = workMode
        self.salary = salary
        self.applicationURL = applicationURL
        self.applicationStatus = applicationStatus
        self.dateApplied = dateApplied
        self.lastUpdated = lastUpdated
        self.notes = notes
        self.followUpDate = followUpDate
        self.interviewDate = interviewDate
        self.contactPerson = contactPerson
        self.contactEmail = contactEmail
    }
}

