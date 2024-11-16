//
//  PortfolioApp.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

import SwiftUI

public struct PortfolioApp: Identifiable, Hashable {
    public let id = UUID()
    public let name: String
    public let iconName: String
    public let description: String
    public let appStoreId: String?
    public let isNew: Bool
    public let isDevelopment: Bool
    
    public var appStoreURL: URL? {
        guard let id = appStoreId else { return nil }
        return URL(string: "https://apps.apple.com/app/id\(id)")
    }
    
    public init(
        name: String,
        iconName: String,
        description: String,
        appStoreId: String?,
        isNew: Bool = false,
        isDevelopment: Bool = false
    ) {
        self.name = name
        self.iconName = iconName
        self.description = description
        self.appStoreId = appStoreId
        self.isNew = isNew
        self.isDevelopment = isDevelopment
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: PortfolioApp, rhs: PortfolioApp) -> Bool {
        lhs.id == rhs.id
    }
}
