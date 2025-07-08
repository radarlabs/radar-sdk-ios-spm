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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.3/RadarSDK.xcframework.zip",
            checksum: "6674716bf259730ba456f294ad21a2bfeea83b6af0cc0de16a04fe21ada7840e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.3/RadarSDKMotion.xcframework.zip",
            checksum: "6ffbddc821162efd5a5f5ecb8ed59b99e100df75c26f033badba3afa41cb687c" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.3/RadarSDKIndoors.xcframework.zip",
            checksum: "c83cd09b14d48e593cc119d98277cab10db5277d727c81bae084fb46d6dbd4c7" // RadarSDKIndoors checksum
        ),
    ]
)
