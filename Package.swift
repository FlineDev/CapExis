// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CapExis",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "CapExis", targets: ["CapExis"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Flinesoft/HandySwift.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "CapExis", dependencies: ["HandySwift"]),
        .testTarget(name: "CapExisTests", dependencies: ["CapExis"]),
    ]
)
