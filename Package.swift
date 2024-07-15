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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.15.0/RadarSDK.xcframework.zip",
        checksum: "db025d167f20c5e98cccd5129042206c2ad6f593e5d34f67a530a09ad5f8b27f"
    ),
  ]
)
