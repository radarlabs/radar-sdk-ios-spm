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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.0/RadarSDK.xcframework.zip",
            checksum: "89fa5b7ede1d3b18cfdd1f9324ff710460190e3fdb5036abd013fd65f72e0f09" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.0/RadarSDKMotion.xcframework.zip",
            checksum: "ab8b8f1241a564479b4008122c1d283d36f32009beb0632deda14b494a87b561" // RadarSDKMotion checksum
        ),
    ]
)
