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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.10.1-beta.1/RadarSDK.xcframework.zip",
        checksum: "86819af5c2ab2e2f3114407bfd28dc5c1feffaf139d3116a6fb931bfc8e9acfe"
    ),
  ]
)
