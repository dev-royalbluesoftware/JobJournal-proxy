//
//
// JobJournal
// WeeklyApplicationActivityChartView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI
import Charts

struct WeeklyApplicationActivityChartView: View {
    
    // MARK: - Properties
    
    var weeklyData: [WeeklyApplicationData]
    var showFullScreen = false
    
    // Calculate Total Job Application for the Week
    private var totalJobApplications: Int {
        weeklyData.reduce(0) { $0 + $1.count }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // Weekly Activity Headline
                Text("Weekly Application Activity")
                    .font(.headline)
                    .padding(.bottom, 4)
                
                Spacer()
                
                // Total Job Applications
                Text("Total: \(totalJobApplications)")
                    .font(.subheadline).fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 4)
            
            if !weeklyData.isEmpty {
                Chart {
                    ForEach(weeklyData) { dataPoint in
                        BarMark(x: .value("Day", dataPoint.day, unit: .day),
                                y: .value("Applications", dataPoint.count))
                        .foregroundStyle(Color.indigo.gradient)
                        .cornerRadius(4)
                        .annotation(position: .top) {
                            // Daily Totals above each bar
                            Text("\(dataPoint.count)")
                                .font(.caption).fontWeight(.semibold)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .chartXAxis {
                    AxisMarks(values: .stride(by: .day)) { value in
                        AxisValueLabel(format: .dateTime.weekday(.abbreviated))
                    }
                }
                .chartYAxis {
                    AxisMarks(position: .leading, values: .automatic(desiredCount: 4))
                }
                .frame(height: showFullScreen ? 600 : 90)
                .chartYScale(domain: 0...(weeklyData.map { $0.count }.max() ?? 5) + 1)
                
            } else {
                Text("No application data for the week")
                    .foregroundStyle(.secondary)
                    .frame(height: showFullScreen ? 600 : 85)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12)
            .fill(Color(.systemGray6)))
    }
}

#Preview {
    WeeklyApplicationActivityChartView(weeklyData: MockData.sampleWeeklyData)
}
