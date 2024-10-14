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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.3/RadarSDK.xcframework.zip",
            checksum: "8435a4fbe740606019f0f1587fd8da30878afb94e5d0b71c43f127307e14a21e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.3/RadarSDKMotion.xcframework.zip",
            checksum: "0f3d3e99438b6e4bdd17f98dbb7b7bada3c2001900eb6bb17f5a37f561943143" // RadarSDKMotion checksum
        ),
    ]
)
