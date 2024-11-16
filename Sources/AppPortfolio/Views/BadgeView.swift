//
//  BadgeView.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 16.11.2024.
//

import SwiftUI

struct Badge: View {
    let text: LocalizedStringKey
    let color: Color
    
    var body: some View {
        Text(text)
            .font(.caption2.weight(.heavy))
            .padding(.horizontal, 4)
            .padding(.vertical, 2)
            .background(color.opacity(0.2))
            .foregroundStyle(color)
            .clipShape(Capsule())
    }
}

#Preview("Badge") {
    VStack(spacing: 10) {
        Badge(text: "NEW", color: .blue)
        Badge(text: "IN DEV", color: .orange)
        Badge(text: "FEATURED", color: .green)
    }
    .padding()
}
