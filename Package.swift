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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.3/RadarSDK.xcframework.zip",
            checksum: "adeb1a6b830d251450252b8d0ee8fcb11ac5c3cf51dc65cbbcde5a54f9d481b3" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.3/RadarSDKMotion.xcframework.zip",
            checksum: "b126ad0c23f0d469a555fa9e17febf64277cf1d50d436d5d1e019086e22c2b39" // RadarSDKMotion checksum
        ),
    ]
)
