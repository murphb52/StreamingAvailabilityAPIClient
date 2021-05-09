// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StreamingAvailabilityAPIClient",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "StreamingAvailabilityAPIClient",
                 targets: ["StreamingAvailabilityAPIClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs",
                 .exact("9.0.0")),
    ],
    targets: [
        .target(name: "StreamingAvailabilityAPIClient",
                dependencies: []),
        .testTarget(name: "StreamingAvailabilityAPIClientTests",
                    dependencies: [
                        "StreamingAvailabilityAPIClient",
                        "OHHTTPStubsSwift",
                        "OHHTTPStubs"
                    ]),
    ]
)
