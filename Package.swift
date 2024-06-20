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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.4/RadarSDK.xcframework.zip",
        checksum: "facb45cd954fce18a8f2a16bcda8da5d84f079e8974bdc021b89bc9c874ceb4b"
    ),
  ]
)
