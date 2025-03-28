//
//
// JobJournal
// DashboardChartsView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct DashboardChartsView: View {
    
    // MARK: - Properties
    
    var weeklyData: [WeeklyApplicationData]
    var applicationStatusData: [ApplicationStatusData]
    
    // MARK: - @State Properties
    
    @State private var showingWeeklyChart = false
    @State private var showingApplicationStatusChart = false
    
    var body: some View {
        VStack(spacing: 12) {
            Button {
                showingWeeklyChart = true
                
            } label: {
                WeeklyApplicationActivityChartView(weeklyData: weeklyData)
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)
            
            Button {
                showingApplicationStatusChart = true
                
            } label: {
                ApplicationStatusPieChartView(applicationStatusData: applicationStatusData)
                .frame(maxWidth: .infinity)
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal)
        // Weekly Application Activty Sheet
        .sheet(isPresented: $showingWeeklyChart) {
            NavigationStack {
                WeeklyApplicationActivityChartView(weeklyData: weeklyData, showFullScreen: true)
                .padding()
                .navigationTitle("Weekly Application Activity")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Done") {
                            showingWeeklyChart = false
                        }
                    }
                }
            }
        }
        // Application Status PieChart Sheet
        .sheet(isPresented: $showingApplicationStatusChart) {
            ApplicationStatusPieChartView(applicationStatusData: applicationStatusData, showFullScreen: true)
            .padding()
            .navigationTitle("Application Status")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        showingApplicationStatusChart = false
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardChartsView(weeklyData: MockData.sampleWeeklyData, applicationStatusData: MockData.sampleApplicationStatusData)
}
