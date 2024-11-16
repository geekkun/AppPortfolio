//
//  PortfolioView.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

import SwiftUI

public struct PortfolioView: View {
    private let currentApps: [PortfolioApp]
    private let upcomingApps: [PortfolioApp]
    private let onAppClick: ((String) -> Void)?
    
    public init(
        currentApps: [PortfolioApp]? = nil,
        upcomingApps: [PortfolioApp]? = nil,
        onAppClick: ((String) -> Void)? = nil
    ) {
        self.currentApps = (currentApps ?? AppCatalog.myApps)
            .filter { app in
                app.bundleId != Bundle.main.bundleIdentifier
            }
        self.upcomingApps = upcomingApps ?? AppCatalog.upcomingApps
        self.onAppClick = onAppClick
    }
    
    public var body: some View {
        Group {
            if !currentApps.isEmpty {
                Section("My Apps") {
                    ForEach(currentApps, id: \.id) { app in
                        Button {
                            onAppClick?(app.name)
                            
                            if let url = app.appStoreURL {
                                UIApplication.shared.open(url)
                            }
                        } label: {
                            AppRowView(app: app)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            
            if !upcomingApps.isEmpty {
                Section("Coming Soon") {
                    ForEach(upcomingApps) { app in
                        Button {
                            onAppClick?(app.name)
                        } label: {
                            AppRowView(app: app)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
    }
}

#Preview("Portfolio - Default") {
    List {
        PortfolioView(upcomingApps: [])
    }
    .listStyle(.insetGrouped)
}

#Preview("Portfolio - Full") {
    List {
        PortfolioView(
            currentApps: PreviewData.currentApps,
            upcomingApps: PreviewData.upcomingApps,
            onAppClick: { appName in
                print("Clicked: \(appName)")
            }
        )
    }
    .listStyle(.insetGrouped)
}

#Preview("Portfolio - Only Current") {
    List {
        PortfolioView(
            currentApps: PreviewData.currentApps,
            onAppClick: { appName in
                print("Clicked: \(appName)")
            }
        )
    }
    .listStyle(.insetGrouped)
}

#Preview("Portfolio - Only Upcoming") {
    List {
        PortfolioView(
            currentApps: [],
            upcomingApps: PreviewData.upcomingApps
        )
    }
    .listStyle(.insetGrouped)
}

#Preview("Portfolio - Empty") {
    List {
        PortfolioView(
            currentApps: [],
            upcomingApps: []
        )
    }
    .listStyle(.insetGrouped)
}

#Preview("Portfolio - Default") {
    List {
        PortfolioView()
    }
    .listStyle(.insetGrouped)
}
