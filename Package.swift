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
        checksum: "f11d632d03470f7f985a183e275c66458c39a832d4df6cf5a35ce2caab8bcc50"
    ),
  ]
)
