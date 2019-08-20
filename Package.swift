// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TinyKeyValueStore",
    products: [
        .library(
            name: "TinyKeyValueStore",
            targets: [ "TinyKeyValueStore" ]
        ),
    ],
    targets: [
        .target(name: "TinyKeyValueStore"),
        .testTarget(
            name: "TinyKeyValueStoreTests",
            dependencies: [ "TinyKeyValueStore" ]
        ),
    ]
)
