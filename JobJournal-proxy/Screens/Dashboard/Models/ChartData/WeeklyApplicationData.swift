//
//
// JobJournal
// WeeklyApplicationData.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct WeeklyApplicationData: Identifiable {
    var id: UUID = UUID()
    var day: Date
    var count: Int
}
