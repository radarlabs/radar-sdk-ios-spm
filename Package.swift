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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.2/RadarSDK.xcframework.zip",
        checksum: "e0e9cf92631ab5ac482c3309444c814b83f659ab4514d6dcb19ba8630be1cc02"
    ),
  ]
)
