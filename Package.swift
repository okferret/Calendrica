// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Calendrica",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Calendrica",
            targets: ["Calendrica"]),
    ],
    dependencies: [
        .package(url: "https://github.com/okferret/libical.git", .upToNextMajor(from: "3.0.20"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Calendrica",
            dependencies: [
                .product(name: "libical", package: "libical")
            ]),
        .testTarget(
            name: "CalendricaTests",
            dependencies: ["Calendrica"]
        ),
    ]
)
