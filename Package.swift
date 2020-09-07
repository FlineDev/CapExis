// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CapExis",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "CapExis", targets: ["CapExis"]),
    ],
    dependencies: [
        // Handy Swift features that didn't make it into the Swift standard library.
        .package(name: "HandySwift", url: "https://github.com/Flinesoft/HandySwift.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "CapExis", dependencies: ["HandySwift"]),
        .testTarget(name: "CapExisTests", dependencies: ["CapExis"]),
    ]
)
