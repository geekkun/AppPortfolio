//
//  PortfolioView+Analytics.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 23.11.2024.
//

extension PortfolioView {
    public static func handleAppClick(_ appName: String) {
        Analytics.logAppClick(appName: appName)
    }
}
