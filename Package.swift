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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.12/RadarSDK.xcframework.zip",
            checksum: "1c25622fce997d31d485a80b1d5a8cbe91422ddfef26b70ee122026f8ffabf8f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.12/RadarSDKMotion.xcframework.zip",
            checksum: "9d19a80cc7450747e9120308429db5326b8ebbdb2e2ad1dcdd837b901c4787aa" // RadarSDKMotion checksum
        )
    ]
)
