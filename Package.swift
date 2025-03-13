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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.3-beta.3/RadarSDK.xcframework.zip",
            checksum: "7eb0f63e2f80c794ab79b34e1ce76f6e402dee60d58e735eec399b95bfbaec71" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.3-beta.3/RadarSDKMotion.xcframework.zip",
            checksum: "f4ffba1260d13263c00949c19349d69d25e854fe547626b2f3f10fe9e0b5f4b1" // RadarSDKMotion checksum
        ),
    ]
)
