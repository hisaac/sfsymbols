// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "sfsymbols",
    platforms: [.macOS(.v10_14)],
    products: [
        .executable(name: "sfsymbols", targets: ["sfsymbols"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.2")
    ],
    targets: [
        .target(name: "SFSymbolsCore", dependencies: []),
        .target(name: "sfsymbols", dependencies: ["ArgumentParser", "SFSymbolsCore"])
    ]
)
