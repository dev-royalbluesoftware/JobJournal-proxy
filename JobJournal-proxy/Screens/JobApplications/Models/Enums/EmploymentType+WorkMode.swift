//
//
// JobJournal
// EmploymentType+WorkMode.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation

enum EmploymentType: String, CaseIterable, Codable, Identifiable {
    case fullTime = "Full-Time"
    case partTime = "Part-Time"
    case contract = "Contract"
    case internship = "Internship"
    case temporary = "Temporary"
    case freelance = "Freelance"
    case seasonal = "Seasonal"
    case apprenticeShip = "Apprenticeship"
    case other = "Other"
    
    var id: String { rawValue }
}

enum WorkMode: String, CaseIterable, Codable, Identifiable {
    case onSite = "On-site"
    case remote = "Remote"
    case hybrid = "Hybrid"
    case flexible = "Flexible"
    case other = "Other"
    
    var id: String { rawValue }
}
