// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"])
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.16.1-beta.7/RadarSDK.xcframework.zip",
            checksum: "c918549f421e3d00cb199edb2196b3da43042561a35f1d081ea4c976df4c71e7" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.16.1-beta.7/RadarSDKMotion.xcframework.zip",
            checksum: "782f330350768385b5360b15202f8010dc9cf07d0ea90c8c1f023331460ef08e" // RadarSDKMotion checksum
        )
    ]
)
