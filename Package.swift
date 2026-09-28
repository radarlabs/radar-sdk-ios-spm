// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v15)
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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0-beta.1/RadarSDK.xcframework.zip",
            checksum: "d7e4556374fc58ba719289f2163efa23e363e23fcfc9a3d22d246c86ffdaa22c" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "0c611a2e642fcaa921f9e905babe3f4357cb666ee77a3aca09fb15a5d6cfcaec" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0-beta.1/RadarSDKIndoors.xcframework.zip",
            checksum: "ec2df6b5d5ec2c9b33f3d197f957bb93c736080882480becabd58aa46344518d" // RadarSDKIndoors checksum
        )
    ]
)
