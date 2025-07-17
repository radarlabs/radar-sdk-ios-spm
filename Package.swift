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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.10/RadarSDK.xcframework.zip",
            checksum: "1de94d4972b987494fbb50d68760a120383575e733376cf3f885a2b47811e8c2" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.10/RadarSDKMotion.xcframework.zip",
            checksum: "e7159baf8e40dc03ef9f9c5438012a4ddba5ef90d954b7f43b2e73a2a998ea4f" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.10/RadarSDKIndoors.xcframework.zip",
            checksum: "" // RadarSDKIndoors checksum
        ),
    ]
)
