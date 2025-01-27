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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.2/RadarSDK.xcframework.zip",
            checksum: "c08c92ab0b9ce963e82c24817e242a5f12fa63c025be2923229088841d9acd0e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.2/RadarSDKMotion.xcframework.zip",
            checksum: "73d79b3f5288172f5e5616903e82e211b519c30da86db6de8ae113fa7aebb4ca" // RadarSDKMotion checksum
        ),
    ]
)
