//
//  PreviewData.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

enum PreviewData {
    static let currentApps: [PortfolioApp] = [
        PortfolioApp(
            name: "Daily Nuggets",
            iconName: "app-icon",
            description: "Track your daily wins and build a record of your progress.",
            appStoreId: "6474...",
            isNew: true,
            isDevelopment: false
        ),
        PortfolioApp(
            name: "Awesome App",
            iconName: "app-icon",
            description: "A brief, compelling description that fits in two lines max.",
            appStoreId: "6475...",
            isNew: false,
            isDevelopment: false
        )
    ]
    
    static let upcomingApps: [PortfolioApp] = [
        PortfolioApp(
            name: "Future App",
            iconName: "app-icon",
            description: "An exciting new app coming to the App Store soon!",
            appStoreId: nil,
            isNew: false,
            isDevelopment: true
        )
    ]
}
