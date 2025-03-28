//
//
// JobJournal
// ColorManager.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct ColorManager {
    /// Returns appropriate color for given ApplicationStatus
    ///     - Parameter status: application status
    ///     - Returns: color associated with the status
    
    static func color(for status: ApplicationStatus) -> Color {
        switch status {
        case .notApplied:
            return .gray
            
        case .applied:
            return .indigo
        
        case .inReview:
            return .reviewOrange
            
        case .screening:
            return .screenTeal
            
        case .interviewing:
            return .interviewYellow
            
        case .offered:
            return .offerOrange
            
        case .rejected:
            return .red
            
        case .declined:
            return .declineLavender
            
        case .withdrawn:
            return .withdrawnSlate

        case .accepted:
            return .acceptGreen
        }
    }
}
