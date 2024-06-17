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
        checksum: "7a860ceb9193afdc107862d0ce7061537337e7b0f4c6f8aac694c6b5da0c0c9c"
    ),
  ]
)
