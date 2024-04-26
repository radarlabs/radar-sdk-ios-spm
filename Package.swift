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
        url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.9.15-beta.1/RadarSDK.xcframework.zip",
        checksum: "20e238a26ec936accb0398e148da67d77d4b53661dadbc07a64c6cc1169327df"
    ),
  ]
)
