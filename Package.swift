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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.0/RadarSDK.xcframework.zip",
        checksum: "39e886403b8a852bd1b1527e9c4a6ba590479b8aaf4b6a419c55195e1dc8d91d"
    ),
  ]
)
