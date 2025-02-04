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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.1/RadarSDK.xcframework.zip",
            checksum: "c41bffa6a37de5f620bf27b3e15f6a8dc8dc003747a76318ce37abaa5a13c748" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.1/RadarSDKMotion.xcframework.zip",
            checksum: "12b3acb1aff218c28882f0c9e1a7d6c756c743d8faee6d30d20ced7d8f93e31b" // RadarSDKMotion checksum
        ),
    ]
)
