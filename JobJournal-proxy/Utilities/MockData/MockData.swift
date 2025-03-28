import Foundation
import SwiftUI
import SwiftData

// Class providing SAMPLE DATA for previews
// Note: Remove @Model attribute - this should be a regular class, not a SwiftData model
class MockData {
    
    // MARK: - Sample Dates
    
    /// Return a date that is a specific number of days from today
    static func dateFrom(days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: Date()) ?? Date()
    }
    
    // MARK: - Chart Data
    
    /// Sample data for the application status pie chart
    static var sampleApplicationStatusData: [ApplicationStatusData] = [
        ApplicationStatusData(applicationStatus: .notApplied, count: 5),
        ApplicationStatusData(applicationStatus: .applied, count: 12),
        ApplicationStatusData(applicationStatus: .inReview, count: 8),
        ApplicationStatusData(applicationStatus: .screening, count: 3),
        ApplicationStatusData(applicationStatus: .interviewing, count: 4),
        ApplicationStatusData(applicationStatus: .offered, count: 1),
        ApplicationStatusData(applicationStatus: .rejected, count: 3),
        ApplicationStatusData(applicationStatus: .withdrawn, count: 1),
        ApplicationStatusData(applicationStatus: .accepted, count: 0)
    ]
    
    /// Sample data for the weekly application activity chart
    static var sampleWeeklyData: [WeeklyApplicationData] = {
        let calendar = Calendar.current
        let today = Date()
        
        // Find the date of the previous Monday
        var mondayComponents = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: today)
        mondayComponents.weekday = 2 // Monday
        let monday = calendar.date(from: mondayComponents) ?? today
        
        return [
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 0, to: monday)!, count: 4),  // Monday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 1, to: monday)!, count: 2),  // Tuesday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 2, to: monday)!, count: 5),  // Wednesday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 3, to: monday)!, count: 3),  // Thursday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 4, to: monday)!, count: 3),  // Friday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 5, to: monday)!, count: 3),  // Saturday
            WeeklyApplicationData(day: calendar.date(byAdding: .day, value: 6, to: monday)!, count: 3)   // Sunday
        ]
    }()
    
    // MARK: - Sample Tags
    
    /// Sample tags for job applications
    static var sampleTags: [Tag] = [
        Tag(name: "Remote", color: .blue),
        Tag(name: "Tech", color: .purple),
        Tag(name: "Urgent", color: .red),
        Tag(name: "Senior", color: .green),
        Tag(name: "Junior", color: .orange),
        Tag(name: "AI", color: .pink),
        Tag(name: "Startup", color: .yellow)
    ]
    
    // MARK: - Sample Job Applications
    
    /// Sample job applications
    static var sampleJobApplications: [JobApplication] = [
        // Application 1 - Apple
        JobApplication(
            companyName: "Apple",
            positionTitle: "iOS Engineer",
            location: "Cupertino, CA",
            employmentType: .fullTime,
            workMode: .hybrid,
            salary: 180000,
            applicationURL: "https://apple.com/careers",
            applicationStatus: .interviewing,
            dateApplied: dateFrom(days: -14),
            lastUpdated: dateFrom(days: -2),
            notes: "Great opportunity, dream company. Need to prepare for technical interview.",
            followUpDate: dateFrom(days: 3),
            interviewDate: dateFrom(days: 5),
            contactPerson: "Sarah Johnson",
            contactEmail: "sjohnson@apple.com"
        ),
        
        // Application 2 - Google
        JobApplication(
            companyName: "Google",
            positionTitle: "Mobile Developer",
            location: "Mountain View, CA",
            employmentType: .fullTime,
            workMode: .onSite,
            salary: 190000,
            applicationURL: "https://google.com/careers",
            applicationStatus: .inReview,
            dateApplied: dateFrom(days: -7),
            lastUpdated: dateFrom(days: -1),
            notes: "Position focused on Android but includes some cross-platform work. Good match for my skills.",
            followUpDate: dateFrom(days: 7)
        ),
        
        // Application 3 - Spotify
        JobApplication(
            companyName: "Spotify",
            positionTitle: "Senior iOS Developer",
            location: "New York, NY",
            employmentType: .fullTime,
            workMode: .remote,
            salary: 170000,
            applicationURL: "https://spotify.com/jobs",
            applicationStatus: .applied,
            dateApplied: dateFrom(days: -3),
            lastUpdated: dateFrom(days: -3),
            notes: "Position requires 5+ years of iOS experience. Great company culture.",
            followUpDate: dateFrom(days: 11)
        ),
        
        // Application 4 - Netflix
        JobApplication(
            companyName: "Netflix",
            positionTitle: "iOS Application Developer",
            location: "Los Gatos, CA",
            employmentType: .fullTime,
            workMode: .hybrid,
            salary: 185000,
            applicationURL: "https://netflix.com/jobs",
            applicationStatus: .applied,
            dateApplied: dateFrom(days: -5),
            lastUpdated: dateFrom(days: -5),
            notes: "Exciting role working on the main Netflix app. Need to highlight streaming experience."
        ),
        
        // Application 5 - Meta
        JobApplication(
            companyName: "Meta",
            positionTitle: "iOS Software Engineer",
            location: "Menlo Park, CA",
            employmentType: .fullTime,
            workMode: .onSite,
            salary: 195000,
            applicationURL: "https://meta.com/careers",
            applicationStatus: .rejected,
            dateApplied: dateFrom(days: -30),
            lastUpdated: dateFrom(days: -10),
            notes: "Received rejection email. Will try again in 6 months."
        ),
        
        // Application 6 - Airbnb
        JobApplication(
            companyName: "Airbnb",
            positionTitle: "Mobile Engineer",
            location: "San Francisco, CA",
            employmentType: .fullTime,
            workMode: .hybrid,
            salary: 175000,
            applicationURL: "https://airbnb.com/careers",
            applicationStatus: .notApplied,
            notes: "Position looks great. Need to update resume before applying."
        ),
        
        // Application 7 - Twitter
        JobApplication(
            companyName: "Twitter",
            positionTitle: "iOS Developer",
            location: "San Francisco, CA",
            employmentType: .fullTime,
            workMode: .remote,
            salary: 160000,
            applicationURL: "https://twitter.com/careers",
            applicationStatus: .screening,
            dateApplied: dateFrom(days: -10),
            lastUpdated: dateFrom(days: -3),
            notes: "Had initial screening call. Technical interview scheduled next week.",
            interviewDate: dateFrom(days: 4),
            contactPerson: "Michael Chen",
            contactEmail: "mchen@twitter.com"
        ),
        
        // Application 8 - Snap
        JobApplication(
            companyName: "Snap Inc.",
            positionTitle: "iOS Engineer",
            location: "Los Angeles, CA",
            employmentType: .fullTime,
            workMode: .onSite,
            salary: 165000,
            applicationURL: "https://snap.com/jobs",
            applicationStatus: .offered,
            dateApplied: dateFrom(days: -28),
            lastUpdated: dateFrom(days: -1),
            notes: "Received offer! Need to negotiate salary. Currently $165K, would like $180K.",
            contactPerson: "Jessica Williams",
            contactEmail: "jwilliams@snap.com"
        ),
        
        // Application 9 - Uber
        JobApplication(
            companyName: "Uber",
            positionTitle: "Mobile Software Engineer",
            location: "San Francisco, CA",
            employmentType: .fullTime,
            workMode: .hybrid,
            applicationURL: "https://uber.com/careers",
            applicationStatus: .withdrawn,
            dateApplied: dateFrom(days: -21),
            lastUpdated: dateFrom(days: -6),
            notes: "Withdrew application after receiving better offer."
        ),
        
        // Application 10 - Microsoft
        JobApplication(
            companyName: "Microsoft",
            positionTitle: "Senior Developer (iOS)",
            location: "Redmond, WA",
            employmentType: .fullTime,
            workMode: .hybrid,
            salary: 200000,
            applicationURL: "https://microsoft.com/careers",
            applicationStatus: .notApplied,
            notes: "Would require relocation. Great compensation package. Application deadline in 2 weeks."
        )
    ]
    
    // MARK: - Sample Interview Rounds
    
    /// Add interview rounds to sample applications
    static func configureSampleInterviewRounds() {
        // Find the Apple job application
        if let appleJob = sampleJobApplications.first(where: { $0.companyName == "Apple" }) {
            // Add interview rounds to the Apple job
            appleJob.interviewRounds = [
                InterviewRound(
                    roundNumber: 1,
                    date: dateFrom(days: -7),
                    interviewType: .phone,
                    interviewer: "HR Representative",
                    notes: "Basic screening call, went well. Asked about my experience with Swift and SwiftUI.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 2,
                    date: dateFrom(days: -3),
                    interviewType: .video,
                    interviewer: "Senior Developer",
                    notes: "Technical interview covering iOS frameworks, architecture, and problem-solving.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 3,
                    date: dateFrom(days: 5),
                    interviewType: .technical,
                    interviewer: "Engineering Team",
                    notes: "Upcoming technical assessment. Need to review data structures and algorithms.",
                    outcome: .pending
                )
            ]
        }
        
        // Find the Twitter job application
        if let twitterJob = sampleJobApplications.first(where: { $0.companyName == "Twitter" }) {
            // Add interview rounds to the Twitter job
            twitterJob.interviewRounds = [
                InterviewRound(
                    roundNumber: 1,
                    date: dateFrom(days: -3),
                    interviewType: .phone,
                    interviewer: "Recruiting Manager",
                    notes: "Discussed background and experience. Positive feedback.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 2,
                    date: dateFrom(days: 4),
                    interviewType: .technical,
                    interviewer: "Development Team",
                    notes: "Will include coding challenge and system design discussion.",
                    outcome: .pending
                )
            ]
        }
        
        // Find the Snap job application
        if let snapJob = sampleJobApplications.first(where: { $0.companyName == "Snap Inc." }) {
            // Add interview rounds to the Snap job
            snapJob.interviewRounds = [
                InterviewRound(
                    roundNumber: 1,
                    date: dateFrom(days: -24),
                    interviewType: .phone,
                    interviewer: "HR Recruiter",
                    notes: "Initial screening. Basic questions about my background.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 2,
                    date: dateFrom(days: -20),
                    interviewType: .technical,
                    interviewer: "Lead iOS Developer",
                    notes: "Coding challenges focused on UIKit and Swift. Went very well.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 3,
                    date: dateFrom(days: -14),
                    interviewType: .video,
                    interviewer: "Engineering Manager",
                    notes: "Behavioral questions and discussion about past projects.",
                    outcome: .successful
                ),
                InterviewRound(
                    roundNumber: 4,
                    date: dateFrom(days: -7),
                    interviewType: .inPerson,
                    interviewer: "Team Panel",
                    notes: "Met with 4 team members. Cultural fit and more technical discussions.",
                    outcome: .successful
                )
            ]
        }
    }
    
    // MARK: - Sample Status Updates
    
    /// Add status updates to sample applications
    static func configureSampleStatusUpdates() {
        // Find the Apple job application
        if let appleJob = sampleJobApplications.first(where: { $0.companyName == "Apple" }) {
            // Add status updates to the Apple job
            appleJob.statusUpdates = [
                StatusUpdate(
                    date: dateFrom(days: -14),
                    previousStatus: .notApplied,
                    newStatus: .applied,
                    notes: "Submitted application through company website."
                ),
                StatusUpdate(
                    date: dateFrom(days: -10),
                    previousStatus: .applied,
                    newStatus: .inReview,
                    notes: "Received confirmation email that application is being reviewed."
                ),
                StatusUpdate(
                    date: dateFrom(days: -8),
                    previousStatus: .inReview,
                    newStatus: .screening,
                    notes: "Contacted by HR for initial phone screening."
                ),
                StatusUpdate(
                    date: dateFrom(days: -4),
                    previousStatus: .screening,
                    newStatus: .interviewing,
                    notes: "Passed screening. Moving forward with technical interviews."
                )
            ]
        }
        
        // Find the Google job application
        if let googleJob = sampleJobApplications.first(where: { $0.companyName == "Google" }) {
            // Add status updates to the Google job
            googleJob.statusUpdates = [
                StatusUpdate(
                    date: dateFrom(days: -7),
                    previousStatus: .notApplied,
                    newStatus: .applied,
                    notes: "Submitted application with referral from college friend."
                ),
                StatusUpdate(
                    date: dateFrom(days: -1),
                    previousStatus: .applied,
                    newStatus: .inReview,
                    notes: "Application moved to review stage according to portal."
                )
            ]
        }
        
        // Find the Snap job application
        if let snapJob = sampleJobApplications.first(where: { $0.companyName == "Snap Inc." }) {
            // Add status updates to the Snap job
            snapJob.statusUpdates = [
                StatusUpdate(
                    date: dateFrom(days: -28),
                    previousStatus: .notApplied,
                    newStatus: .applied,
                    notes: "Applied through LinkedIn Easy Apply."
                ),
                StatusUpdate(
                    date: dateFrom(days: -25),
                    previousStatus: .applied,
                    newStatus: .inReview,
                    notes: "Application status updated on company portal."
                ),
                StatusUpdate(
                    date: dateFrom(days: -22),
                    previousStatus: .inReview,
                    newStatus: .screening,
                    notes: "Received email for initial phone screen."
                ),
                StatusUpdate(
                    date: dateFrom(days: -18),
                    previousStatus: .screening,
                    newStatus: .interviewing,
                    notes: "Passed screening, moving to interview rounds."
                ),
                StatusUpdate(
                    date: dateFrom(days: -1),
                    previousStatus: .interviewing,
                    newStatus: .offered,
                    notes: "Received job offer via email and phone call."
                )
            ]
        }
    }
    
    // MARK: - Sample Data Configuration
    
    /// Configure relationships for all sample data
    static func configureAllSampleData() {
        configureSampleInterviewRounds()
        configureSampleStatusUpdates()
        
        // Add tags to job applications
        for (index, application) in sampleJobApplications.enumerated() {
            // Add different combinations of tags based on the application index
            switch index % 5 {
            case 0:
                application.tags = [sampleTags[0], sampleTags[2]]  // Remote, Urgent
            case 1:
                application.tags = [sampleTags[1], sampleTags[4]]  // Tech, Junior
            case 2:
                application.tags = [sampleTags[3], sampleTags[5]]  // Senior, AI
            case 3:
                application.tags = [sampleTags[6]]                 // Startup
            case 4:
                application.tags = [sampleTags[0], sampleTags[1], sampleTags[5]]  // Remote, Tech, AI
            default:
                break
            }
        }
    }
    
    // MARK: - Create In-Memory Container
    
    /// Create an in-memory SwiftData container with sample data
    @MainActor
    static func previewContainer() -> ModelContainer {
        // Configure all sample data relationships
        configureAllSampleData()
        
        // Create a memory-only container for previews
        do {
            // Make sure to include ALL your model classes in the schema
            let schema = Schema([
                JobApplication.self,
                InterviewRound.self,
                StatusUpdate.self,
                Tag.self
            ])
            
            // This is the key setting that ensures in-memory only storage
            let modelConfiguration = ModelConfiguration(
                schema: schema,
                isStoredInMemoryOnly: true
            )
            
            // Create the container with the in-memory configuration
            let container = try ModelContainer(
                for: schema,
                configurations: [modelConfiguration]
            )
            
            // Add all sample job applications to the container
            for application in sampleJobApplications {
                container.mainContext.insert(application)
            }
            
            return container
        } catch {
            // If there's an error creating the container, log it and return an empty one
            print("Failed to create the model container for previewing: \(error)")
            return try! ModelContainer(for: JobApplication.self, InterviewRound.self, StatusUpdate.self, Tag.self)
        }
    }
    
    // MARK: - Preview Context
    
    /// Get a preview context with sample data
    @MainActor
    static var previewContext: ModelContext {
        return previewContainer().mainContext
    }
}

// MARK: - Extensions for Preview Convenience

extension ModelContainer {
    /// A convenience computed property to get a preview container with sample data
    @MainActor
    static var preview: ModelContainer {
        return MockData.previewContainer()
    }
}
