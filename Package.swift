// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CapExis",
    products: [
        .library(name: "CapExis", targets: ["CapExis"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "CapExis", dependencies: []),
        .testTarget(name: "CapExisTests", dependencies: ["CapExis"]),
    ]
)
