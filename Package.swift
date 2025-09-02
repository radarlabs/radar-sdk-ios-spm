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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.0/RadarSDK.xcframework.zip",
            checksum: "5ce4bbc4704e81aa9b3a83f58055d30b298ae4bd6b54cd2cb106e51f250e378d" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.0/RadarSDKMotion.xcframework.zip",
            checksum: "b30e28bd062f16d7678fb9f6093670df532cfeeafda6b67639f4cdcf3dc5a4d4" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.0/RadarSDKIndoors.xcframework.zip",
            checksum: "f689dbcc1da79032fdb8071bd416ae73a6e4953b2fc0bc27b8a90ea81ae160ff" // RadarSDKIndoors checksum
        )
    ]
)
