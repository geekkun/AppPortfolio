// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AppPortfolio",
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
            dependencies: []),
        .testTarget(
            name: "AppPortfolioTests",
            dependencies: ["AppPortfolio"]),
    ]
)
