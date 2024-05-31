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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.11.2/RadarSDK.xcframework.zip",
        checksum: "9e43a95e0c58aec4be98b0209a31f190683917aa943a114a418b0b960a3c0e83"
    ),
  ]
)
