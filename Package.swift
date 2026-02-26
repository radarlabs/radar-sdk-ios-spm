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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.26.2-beta.1/RadarSDK.xcframework.zip",
            checksum: "64dd2f3e999122f3d3409018694c3e18ed1cce4f69603ec122a11854c90397e3" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.26.1/RadarSDKMotion.xcframework.zip",
            checksum: "8ff81d29bb4ec6d319cda8ac0464e6a6f60bf158fae2a7dc36f99253ca4a5538" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.26.1/RadarSDKIndoors.xcframework.zip",
            checksum: "886155118532967be9cfe711743a6e5dab929546ccad0e68fe961ea96c39c757" // RadarSDKIndoors checksum
        )
    ]
)
