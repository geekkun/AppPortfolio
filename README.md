# AppPortfolio

A lightweight iOS component to showcase your app portfolio in a beautiful, native UI.

<img src="Images/demo.png" width="300">

## Features
- Native SwiftUI implementation
- Customizable app cards with icons and descriptions
- Support for both released and upcoming apps
- Built-in analytics hooks
- Automatic "NEW" badge based on release date
- Dark mode support
- Fully customizable appearance

## Installation

### Swift Package Manager
Add the following dependency to your `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/geekkun/AppPortfolio.git", from: "1.0.0")
]
```

### Requirements
- iOS 16.0+
- Xcode 15.0+
- Swift 5.9+

## Usage

```swift
import AppPortfolio

struct InfoView: View {
    let apps = [
        PortfolioApp(
            name: "Awesome App",
            iconName: "app-icon",
            description: "An amazing app that does amazing things",
            appStoreId: "1234567890"
        )
    ]
    
    var body: some View {
        List {
            PortfolioView(
                currentApps: apps,
                onAppClick: { appName in
                    print("User tapped on \(appName)")
                }
            )
        }
    }
}
```

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
AppPortfolio is available under the MIT license.

