//
//  AppRowView.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

import SwiftUI

struct AppRowView: View {
    let app: PortfolioApp
    
    var body: some View {
        HStack(spacing: 12) {
            Group {
                if let bundledImage = UIImage(named: app.iconName, in: .portfolio, with: nil) {
                    Image(uiImage: bundledImage)
                        .resizable()
                } else if let _ = UIImage(named: app.iconName) {
                    Image(app.iconName)
                        .resizable()
                } else {
                    Image(systemName: "sparkles")
                        .resizable()
                }
            }
            .frame(width: 52, height: 52)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 2)
            
            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 4) {
                    Text(app.name)
                        .font(.callout.weight(.medium))
                    
                    if app.isNew {
                        Badge(text: "NEW", color: .accentColor)
                    }
                    
                    if app.isDevelopment {
                        Badge(text: "IN DEVELOPMENT", color: .orange)
                    }
                }
                
                Text(app.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            if app.appStoreURL != nil {
                Image(systemName: "chevron.right")
                    .font(.footnote)
                    .foregroundStyle(.tertiary)
            }
        }
        .contentShape(Rectangle())
    }
}

#Preview("App Row - Released") {
    List {
        AppRowView(app: PreviewData.currentApps[0])
        AppRowView(app: PreviewData.currentApps[1])
    }
}

#Preview("App Row - Development") {
    List {
        AppRowView(app: PreviewData.upcomingApps[0])
    }
}
