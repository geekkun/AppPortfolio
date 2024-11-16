//
//  AppCatalog.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

public enum AppCatalog {
    public static let myApps: [PortfolioApp] = [
        PortfolioApp(
            name: "Daily Nuggets",
            iconName: "daily-nuggets",
            description: String(localized: "Capture your daily wins with minimal friction, maximum impact."),
            appStoreId: "6738213003",
            bundleId: "com.alekskuznetsov.Daily-Nuggets",
            isNew: true
        ),
        PortfolioApp(
            name: "Big Five for Life",
            iconName: "big-five",
            description: String(localized: "Define and track your life's most important goals and aspirations."),
            appStoreId: "6737238180",
            bundleId: "com.alekskuznetsov.BigFiveForLifeApp",
            isNew: true
        ),
        PortfolioApp(
            name: "Cashbacker",
            iconName: "cashbacker",
            description: String(localized: "Track and maximize your bank card rewards across multiple banks."),
            appStoreId: "6499032369",
            bundleId: "com.alekskuznetsov.cashback",
            isNew: false
        ),
        PortfolioApp(
            name: "Useless Contacts",
            iconName: "useless-contacts",
            description: String(localized: "Clean up your contacts with smart filtering and batch operations."),
            appStoreId: "6737058251",
            bundleId: "com.alekskuznetsov.useless-contactss",
            isNew: false
        ),
        PortfolioApp(
            name: "Borsky Bridge",
            iconName: "borsky-bridge",
            description: String(localized: "Real-time schedule for Borsky Bridge reversible lanes traffic."),
            appStoreId: "6736940685",
            bundleId: "com.alekskuznetsov.BorskyBridgeReversal",
            isNew: false
        )
    ]
    
    public static let upcomingApps: [PortfolioApp] = [
        PortfolioApp(
            name: "Domovoy",
            iconName: "domovoy",
            description: String(localized: "Smart home maintenance tracker for property owners and managers."),
            appStoreId: nil,
            isDevelopment: true
        ),
        PortfolioApp(
            name: "R U?",
            iconName: "ru-game",
            description: String(localized: "Social party game that helps friends discover surprising connections."),
            appStoreId: nil,
            isDevelopment: true
        ),
        PortfolioApp(
            name: "Freelance Wars",
            iconName: "freelance-wars",
            description: String(localized: "Battle your way through the freelance life in this card game."),
            appStoreId: nil,
            isDevelopment: true
        )
    ]
}
