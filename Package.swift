// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
  products: [.library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"])],
  targets: [
    .target(name: "_RadarStub"),
    .binaryTarget(
        name: "RadarSDK",
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.12.0/RadarSDK.xcframework.zip",
        checksum: "c3d700abb9cf6a54b173e4af84ff29b7aaf211da43d9ec4c56c17ee38760897b"
    ),
  ]
)
