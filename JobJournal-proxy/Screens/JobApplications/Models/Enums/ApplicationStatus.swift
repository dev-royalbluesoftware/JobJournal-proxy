//
//
// JobJournal
// ApplicationStatus.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation
import SwiftUI

enum ApplicationStatus: String, CaseIterable, Identifiable, Codable {
    case notApplied = "Not Applied"
    case applied = "Applied"
    case inReview = "In Review"
    case screening = "Screening"
    case interviewing = "Interviewing"
    case offered = "Offer Received"
    case rejected = "Rejected"
    case withdrawn = "Application Withdrawn"
    case declined = "Offer Declined"
    case accepted = "Offer Accepted"
    
    var id: String { rawValue }
}
