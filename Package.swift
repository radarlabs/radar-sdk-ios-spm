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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.3-beta.2/RadarSDK.xcframework.zip",
        checksum: "6198d8b3c798d84f9cac955dc83110fae030e7fcd7da77feb55531ab9f952e2c"
    ),
  ]
)
