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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.3-beta.1/RadarSDK.xcframework.zip",
        checksum: "ab31bf2a46b24a2fc170a3ff3172815c828e12afdb4dcd3340ca147ada42d3c6"
    ),
  ]
)
