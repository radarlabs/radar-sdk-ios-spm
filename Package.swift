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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.30.0/RadarSDK.xcframework.zip",
            checksum: "44e83e44346d4401bc7f4a36908874432b2043a1cf464177a6e4de29b2e3f692" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.30.0/RadarSDKMotion.xcframework.zip",
            checksum: "c76754df693c94c00b7d00bab1d437465b30991b54cab9e422f2c845db3d9964" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.30.0/RadarSDKIndoors.xcframework.zip",
            checksum: "ab5e1c1eca8d1a7c375e9b7721f265decdc2bcdfad9049e050847e1fc2d95579" // RadarSDKIndoors checksum
        )
    ]
)
