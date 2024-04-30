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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.9.15-beta.2/RadarSDK.xcframework.zip",
        checksum: "dc46e56dc9ffb5e2e1d8d2c005bf51600f929ecb1cd52096d9ac029f37f396af"
    ),
  ]
)
