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
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.11/RadarSDK.xcframework.zip",
            checksum: "ecb2275523b4477a5b9ddf53d86de48558ee303cc313f8b928b9a79e03c414b8" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.11/RadarSDKMotion.xcframework.zip",
            checksum: "5b646a160179ebe35e716728833d5302e745bf9e5cfb1ac645e508c43a69416e" // RadarSDKMotion checksum
        )
    ]
)
