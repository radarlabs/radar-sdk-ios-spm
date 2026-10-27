// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v15)
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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.45.0/RadarSDK.xcframework.zip",
            checksum: "16ea91bed34cde6954b78b6cce6907b8d124e2735a77b10f767f17b28b07ffe6" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.45.0/RadarSDKMotion.xcframework.zip",
            checksum: "c77db46eecf7fbea77d15e38eea97d5ab6de94b32011055e7fb278bea5d45ebc" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.45.0/RadarSDKIndoors.xcframework.zip",
            checksum: "8d1cbd549f73af9b51180104620104568c0f3028b1e23518ac0d66ffd5c3b503" // RadarSDKIndoors checksum
        )
    ]
)
