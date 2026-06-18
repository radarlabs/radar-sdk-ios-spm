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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.36.0/RadarSDK.xcframework.zip",
            checksum: "4f6d1e715a30bbc19df3b441f5241526f80f357c3a7c10f6b0a9cc4f03684674" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.36.0/RadarSDKMotion.xcframework.zip",
            checksum: "7b51def3a6e2e3cc82ce2a88165ff2707a2dd51aa4602e4ef70f4bbac05cd608" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.36.0/RadarSDKIndoors.xcframework.zip",
            checksum: "b245d08e51946a7e6a585098dff58b868165315399fba2928665a52dd0fad7a1" // RadarSDKIndoors checksum
        )
    ]
)
