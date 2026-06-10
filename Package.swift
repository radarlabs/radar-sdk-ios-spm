// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"]),
          .library(name: "RadarSDKIndoors", targets: ["RadarSDKIndoors", "_RadarStub"]),
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.35.0/RadarSDK.xcframework.zip",
            checksum: "bb4e0cd6bdb2a0684d21ece8bc0b6bc934ae7ebc6feb85e3739459f6bee0dd22" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.35.0/RadarSDKMotion.xcframework.zip",
            checksum: "56acc7ed9b29caf5bc686c5a2c2fd5c733a29abbe31597f3fa615db21a0fe30e" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.35.0/RadarSDKIndoors.xcframework.zip",
            checksum: "7ea794ba87abf7c00884ec957e9e363349c300dacb3f0a7ebb60f06418c6d39e" // RadarSDKIndoors checksum
        )
    ]
)
