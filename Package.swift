// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PocketSVG",
    products: [
        .library(name: "PocketSVG", targets: ["PocketSVG"]),
    ],
    targets: [
        .target(name: "PocketSVG", dependencies: ["../Clibxml"], path: "Sources"),
        .testTarget(name: "PocketSVGTests", dependencies: ["PocketSVG"], path: "PocketSVGTests"),
    ]
)