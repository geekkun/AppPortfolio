//
//  File 2.swift
//  AppPortfolio
//
//  Created by Aleksandr Kuznetsov on 23.11.2024.
//

import Foundation
import UIKit

public final class Analytics {
    private static var config: AnalyticsConfig?
    
    public static func configure(with config: AnalyticsConfig) {
        self.config = config
    }
    
    static func sendLog(_ text: String) {
        guard let config = config else { return }
        
        let baseUrl = "https://api.telegram.org/bot\(config.botToken)/sendMessage"
        let params = ["chat_id": config.chatId, "text": text]
        
        guard let url = createURL(baseUrl: baseUrl, params: params) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Analytics error: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    private static func createURL(baseUrl: String, params: [String: String]) -> URL? {
        guard var components = URLComponents(string: baseUrl) else { return nil }
        components.queryItems = params.map { URLQueryItem(name: $0.key, value: $0.value) }
        return components.url
    }
    
    public static func logAppClick(appName clickedAppName: String) {
        guard config != nil else { return }
        
        // App info
        let hostAppName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String
            ?? Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
            ?? "Unknown App"
        let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Unknown"
        let buildNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "Unknown"
        
        // Device info
        let device = UIDevice.current
        let deviceModel = device.model
        let systemName = device.systemName
        let systemVersion = device.systemVersion
        
        // Locale info
        let locale = Locale.current
        let language = locale.language.languageCode?.identifier ?? "Unknown"
        let region = locale.region?.identifier ?? "Unknown"
        let timeZone = TimeZone.current.identifier
        
        // Interface info
        let interfaceStyle = UITraitCollection.current.userInterfaceStyle == .dark ? "dark" : "light"
        
        // Compile the message
        let details = [
            "Source App: \(hostAppName) v\(appVersion) (\(buildNumber))",
            "Click on: \(clickedAppName)",
            "Device: \(deviceModel)",
            "System: \(systemName) \(systemVersion)",
            "Locale: \(language)_\(region)",
            "TimeZone: \(timeZone)",
            "Interface: \(interfaceStyle)"
        ].joined(separator: "\n")
        
        sendLog(details)
    }
}
