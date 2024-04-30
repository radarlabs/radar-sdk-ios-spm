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
        checksum: "c64834ee0de7dedeeb17e9a60fc0f78df146df431ccde10204ca5ae20171e37d"
    ),
  ]
)
