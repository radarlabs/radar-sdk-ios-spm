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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.6/RadarSDK.xcframework.zip",
            checksum: "e05e7d629d9d711fdefc52467dd9e113395c076b9671f8996ddb145c1d01ce6a" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.6/RadarSDKMotion.xcframework.zip",
            checksum: "137dc8d60fbb3f1f7a0964f3d940d46e417bff061630b77c2a25e0fe610b8855" // RadarSDKMotion checksum
        ),
    ]
)
