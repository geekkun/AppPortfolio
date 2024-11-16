// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AppPortfolio",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "AppPortfolio",
            targets: ["AppPortfolio"]),
    ],
    targets: [
        .target(
            name: "AppPortfolio",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "AppPortfolioTests",
            dependencies: ["AppPortfolio"]),
    ]
)
