// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QA",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "QA",
            targets: ["QA"]),

    ],
    dependencies: [
        // 3rd Parties
        .package(
            url: "https://github.com/kean/Pulse",
            .upToNextMajor(from: "0.20.0")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "QA", dependencies: [
                // 3rd Parties
                "Pulse",
                .product(name: "PulseUI", package: "Pulse"),
            ]),
        .testTarget(
            name: "QATests",
            dependencies: ["QA"]),
    ]
)
