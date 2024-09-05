// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "CM",
    platforms: [
        .iOS(.v14), .macOS(.v11)
    ],
    products: [
        .library(
            name: "CM",
            targets: ["CM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/michaeleisel/ZippyJSON.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "CM",
            dependencies: [
                .product(name: "ZippyJSON", package: "ZippyJSON")
            ]
        ),
        .testTarget(
            name: "CMTest",
            dependencies: ["CM"]),
    ]
)