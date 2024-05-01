// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
  products: [.library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"])],
  targets: [
    .target(name: "_RadarStub"),
    .binaryTarget(
        name: "RadarSDK",
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.10.1/RadarSDK.xcframework.zip",
        checksum: "69897e2d52fc03d7f515824448ad4130f7e1f2c0899e26d6dfb32e4c9434d48e"
    ),
  ]
)
