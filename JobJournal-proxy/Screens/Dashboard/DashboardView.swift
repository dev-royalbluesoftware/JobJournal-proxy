//
//
// JobJournal
// DashboardView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 



import SwiftUI
import SwiftData

struct DashboardView: View {
    
    // MARK: - SwiftData Query
    
    @Query private var jobApplications: [JobApplication]
    
    // MARK: - Properties
    
    var weeklyData: [WeeklyApplicationData]
    var applicationStatusData: [ApplicationStatusData]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Charts View
                DashboardChartsView(weeklyData: weeklyData, applicationStatusData: applicationStatusData)
                
                Divider()
                    .padding(.horizontal)
                
                // Quick Action Buttons
                
                // Upcoming Schedule
                
            }
            // "Sticky" Profile Header
        }
    }
}

#Preview {
    DashboardView(weeklyData: MockData.sampleWeeklyData, applicationStatusData: MockData.sampleApplicationStatusData)
}
