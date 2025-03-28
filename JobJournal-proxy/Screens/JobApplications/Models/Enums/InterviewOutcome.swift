//
//
// JobJournal
// InterviewOutcome.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation

enum InterviewOutcome: String, Codable, CaseIterable, Identifiable {
    case successful = "Successful"
    case unsuccessful = "Unsuccessful"
    case pending = "Pending"
    case rescheduled = "Rescheduled"
    case cancelled = "Cancelled"
    case other = "Other"
    
    var id: String { rawValue }
}
