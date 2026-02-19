// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "motor",
    products: [
        .library(
            name: "Motor",
            targets: ["Motor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cli/ansi-escape-code", from: "0.1.1"),
    ],
    targets: [
        .target(
            name: "Motor",
            dependencies:["ANSIEscapeCode"]),
        .target(
            name: "motor-example",
            dependencies: ["Motor"]),
    ]
)
