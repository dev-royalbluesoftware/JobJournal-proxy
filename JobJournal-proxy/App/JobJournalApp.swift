//
//
// JobJournal
// JobJournalApp.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

@main
struct JobJournalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Setup SwiftData Container
        .modelContainer(for: [JobApplication.self, InterviewRound.self, StatusUpdate.self])
    }
}
