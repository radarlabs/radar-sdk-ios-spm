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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.5/RadarSDK.xcframework.zip",
        checksum: "d99bf9bb49ca90e40abaafd166f4864aee8b8523f119e736ff7b1f29464b871c"
    ),
  ]
)
