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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.1/RadarSDK.xcframework.zip",
            checksum: "317a3c543035bdfc07a1ef75c1c369aec68c449af39950025bd6cd6a9a477142" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "443ac43a2251bf86dec3fd0cc3ea1e9dcc93a62d1562e4a393a46a80bed2e114" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.1/RadarSDKIndoors.xcframework.zip",
            checksum: "<CHECKSUM_INDOORS>" // placeholder
        ),
    ]
)
