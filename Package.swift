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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.3-beta.2/RadarSDK.xcframework.zip",
        checksum: "60b2b50f73c9a2c00ba0be1e27bfcb529ae726e7e6000b77dd6309003ca3b3e0"
    ),
  ]
)
