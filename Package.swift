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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.3/RadarSDK.xcframework.zip",
            checksum: "86a2f5fa6ac735a12fd8c8c78339c950fd57d63fc60cef8b58e8efce9c04de00" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.3/RadarSDKMotion.xcframework.zip",
            checksum: "0967174af0932340c1d5e661ce818380ae73c73263d50e363961b00dad25ac44" // RadarSDKMotion checksum
        ),
    ]
)
