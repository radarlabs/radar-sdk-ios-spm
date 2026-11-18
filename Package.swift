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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/4.0.0/RadarSDK.xcframework.zip",
            checksum: "979e70c1253ad2da8743074215fd1639e939d57297a8a1e53e570dfb3c28480d" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/4.0.0/RadarSDKMotion.xcframework.zip",
            checksum: "ff40c2344c787c0edf08a1d8201e682fa89f19113170ab976f0069d4e0fca298" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/4.0.0/RadarSDKIndoors.xcframework.zip",
            checksum: "d1db0e724461530ed5bb9b9e844b617b98139117a6e6de40030aa8f972d9e85a" // RadarSDKIndoors checksum
        )
    ]
)
