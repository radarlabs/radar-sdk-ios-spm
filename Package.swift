// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"]),
          .library(name: "RadarSDKIndoors", targets: ["RadarSDKIndoors", "_RadarStub"]),
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.2/RadarSDK.xcframework.zip",
            checksum: "b47ca1eb1f27a1658c13b1634100e7637841e47b2fad0793432ced190fa8b508" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "b675b4e32b2712f8bf4d05f1a7414653759a6c99123fc6cd23751bf0451fac04" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "<CHECKSUM_INDOORS>" // placeholder
        ),
    ]
)
