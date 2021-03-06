// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VSLib",
    platforms: [
        SupportedPlatform.iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VSLib",
            targets: ["VSLib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "VSLib", url: "https://mustdev.ru/VSLib.xcframework.zip", checksum: "c6e6b6b841d33a104b7646881056b3c02187d2fbf51ad6dc8da75a3ea4bbe836")

    ]
)
