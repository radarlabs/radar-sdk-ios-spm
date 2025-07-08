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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.5/RadarSDK.xcframework.zip",
            checksum: "131048cb507101169c87a282c195db4ab9207b64173bdf21966bb0cc9830d29a" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.5/RadarSDKMotion.xcframework.zip",
            checksum: "57dd8961beb1afb4ead102713bd1d32bf4480da313426afe75680991b6cf27f4" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.5/RadarSDKIndoors.xcframework.zip",
            checksum: "c9124b50d65e1ab084cb546f6908844ba39178f747e5e1c3c16d0c31a8a48c35" // RadarSDKIndoors checksum
        ),
    ]
)
