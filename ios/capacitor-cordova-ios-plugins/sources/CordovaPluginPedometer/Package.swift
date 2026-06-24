// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CordovaPluginPedometer",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CordovaPluginPedometer",
            targets: ["CordovaPluginPedometer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.4.1")
    ],
    targets: [
        .target(
            name: "CordovaPluginPedometer",
            dependencies: [
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: ".",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("CoreMotion")
            ]
        )
    ]
)