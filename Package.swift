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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.1/RadarSDK.xcframework.zip",
            checksum: "2743b168cfd5a8702e4cff93cf6fd7c94a0b7d762f01b10527f07bec63ef282f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "dc5a91f1eae8ee0314e7e948e7a49b8bed4a398e992fad968b90fb0ea54687fe" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.1/RadarSDKIndoors.xcframework.zip",
            checksum: "41c0943acfa66b1ca32d6a41f17788de0e341a20416d9273f9a2e3499d0a4373" // RadarSDKIndoors checksum
        )
    ]
)
