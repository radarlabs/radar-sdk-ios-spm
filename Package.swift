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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.8/RadarSDK.xcframework.zip",
            checksum: "b07054d1f94a00a71822666f8af03d64038d305be53b5f3075306fda54ff8dab" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.8/RadarSDKMotion.xcframework.zip",
            checksum: "b18e164b3c96496509a97491950c95dd8a8ae046d8e34c249a9532d41c8e3ea6" // RadarSDKMotion checksum
        ),
    ]
)
