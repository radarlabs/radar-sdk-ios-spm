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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.3/RadarSDK.xcframework.zip",
            checksum: "542b88aed1939e4ccb79552217c280a6f3b886b5ec13b45edc3d42d66e2f773e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.3/RadarSDKMotion.xcframework.zip",
            checksum: "94f972a8b2dff4d7a19fc352d17e37ff5ad14470c8f1c0b8618ca7b193fbdc53" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.3/RadarSDKIndoors.xcframework.zip",
            checksum: "647fbb8c5d19a383099c5ddcb53b659523e063ac62524027d86f774f406224fb" // RadarSDKIndoors checksum
        )
    ]
)
