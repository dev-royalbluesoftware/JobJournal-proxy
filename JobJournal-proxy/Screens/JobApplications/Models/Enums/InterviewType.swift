//
//
// JobJournal
// InterviewType.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation

enum InterviewType: String, Codable, CaseIterable, Identifiable {
    case phone = "Phone"
    case inPerson = "In-Person"
    case video = "Video"
    case technical = "Technical"
    case behavioral = "Behavioral"
    case mockInterview = "Mock Interview"
    case other = "Other"
    
    var id: String { rawValue }
}
