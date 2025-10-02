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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3/RadarSDK.xcframework.zip",
            checksum: "5933037431fb418b0c55d729ceb70c05b6627861721263e8976ce015b7a65c56" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3/RadarSDKMotion.xcframework.zip",
            checksum: "475910aab3de21430fdfa06e215916793134c78185fa83a9d7638d9c82eba4ab" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3/RadarSDKIndoors.xcframework.zip",
            checksum: "e9a81c3a2c1bf9ce2f753ffcec6554a0e4eb0736112c74dc1be96d1e0497949d" // RadarSDKIndoors checksum
        )
    ]
)
