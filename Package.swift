// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CapExis",
    products: [
        .library(name: "CapExis", targets: ["CapExis"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.0.0"),
        .package(url: "https://github.com/Flinesoft/HandySwift.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "CapExis", dependencies: ["CryptoSwift", "HandySwift"]),
        .testTarget(name: "CapExisTests", dependencies: ["CapExis"]),
    ]
)
