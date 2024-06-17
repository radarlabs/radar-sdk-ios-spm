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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.13.3/RadarSDK.xcframework.zip",
        checksum: "7079f2020a22ba3c1d61529ecc78c175b38705523f6e69caa1b161d7fe74cfca"
    ),
  ]
)
