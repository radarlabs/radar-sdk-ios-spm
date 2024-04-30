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
        checksum: "e029f20f4a2be3592946553ed746661d2d31d6bf5f138406367a69b4b1ec58bc"
    ),
  ]
)
