//
//  AnalyticsConfig.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 23.11.2024.
//

import Foundation
import UIKit

public struct AnalyticsConfig {
    let botToken: String
    let chatId: String
    
    public init(botToken: String, chatId: String) {
        self.botToken = botToken
        self.chatId = chatId
    }
}
