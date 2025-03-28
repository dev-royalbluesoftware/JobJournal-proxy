//
//
// JobJournal
// ApplicationStatusData.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ApplicationStatusData: Identifiable {
    var id: UUID = UUID()
    var applicationStatus: ApplicationStatus
    var count: Int
}
