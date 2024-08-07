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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.16.1-beta.5/RadarSDK.xcframework.zip",
        checksum: "7cb651aeda3c9e6342098c82c8f96780089a304c0dd867504ea2368e4063137d"
    ),
  ]
)
