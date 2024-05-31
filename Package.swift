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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.11.1/RadarSDK.xcframework.zip",
        checksum: "236ece44f4beaeb6e571aa7d42e7bf2863a9ad5c9c7414c7dd9eafa970d02bba"
    ),
  ]
)
