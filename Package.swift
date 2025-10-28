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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1-beta.2/RadarSDK.xcframework.zip",
            checksum: "35e11f9f3ca4e0a4ca4f9f3fc704c44e978463c6e362e554c8f46924112ad34e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "9363cabdc64237f01e29bf4b4ee8ec277ecd9f6665ef38ed5ca59b889a696c6b" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "ccb9e8785112601c430c9bb47535144a372b4ccec00f068a999aff4551b58bdb" // RadarSDKIndoors checksum
        )
    ]
)
