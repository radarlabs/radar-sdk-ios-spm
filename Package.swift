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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.9.15-beta.3/RadarSDK.xcframework.zip",
        checksum: "713bcf25bc928d7331d619a43db7859a6f30bc710efa91d46f2beb20d3dbcbc3"
    ),
  ]
)
