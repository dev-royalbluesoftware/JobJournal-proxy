//
//
// JobJournal
// ApplicationStatusPieChartView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI
import Charts

struct ApplicationStatusPieChartView: View {
    
    // MARK: - Properties
    
    var applicationStatusData: [ApplicationStatusData]
    var showFullScreen = false
    
    // Calculate total job applications
    private var totalJobApplications: Int {
        applicationStatusData.reduce(0) { $0 + $1.count }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Application Status")
                    .font(.headline)
                    .padding(.bottom, 8)
                
                Spacer()
                
                // Total Job Application Count
                Text("Total: \(totalJobApplications)")
                    .font(.subheadline).fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 4)
            
            if !applicationStatusData.isEmpty {
                Chart {
                    ForEach(applicationStatusData) { dataPoint in
                        if dataPoint.count > 0 {
                            SectorMark(angle: .value("Count", dataPoint.count),
                                       innerRadius: .ratio(0.618), angularInset: 1.5)
                            .foregroundStyle(by: .value("Status", dataPoint.applicationStatus.rawValue))
                            .cornerRadius(4)
                            .annotation(position: .overlay) {
                                // Job Application Status Totals (each sector) - only showing > 0
                                Text("\(dataPoint.count)")
                                    .font(showFullScreen ? .callout : .caption)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                // Add a shadow to make it visible on any color
                                    .shadow(radius: 2)
                            }
                        }
                    }
                }
                
                // Define the chart color mapping directly from ColorManager
                .chartForegroundStyleScale { (applicationStatusValue: String) -> Color in
                    // Takes the applicationStatus rawValue and returns the appropriate color
                    if let applicationStatusEnum = ApplicationStatus(rawValue: applicationStatusValue) {
                        return ColorManager.color(for: applicationStatusEnum)
                    }
                    return .gray // Fallback color
                }
                .chartLegend(position: showFullScreen ? .bottom : .trailing,
                             alignment: showFullScreen ? .center : .leading)
                .frame(height: showFullScreen ? 600 : 90)
                
            } else {
                Text("No application status data available")
                    .foregroundStyle(.secondary)
                    .frame(height: showFullScreen ? 300 : 85)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12)
            .fill(Color(.systemGray6)))
    }
}

#Preview {
    ApplicationStatusPieChartView(applicationStatusData: MockData.sampleApplicationStatusData)
}
