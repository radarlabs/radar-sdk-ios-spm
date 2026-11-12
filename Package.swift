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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.46.0/RadarSDK.xcframework.zip",
            checksum: "bb3a381546b4d88d15d53a47353d957e21ea290b29b949b45f7171111f3c00fc" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.46.0/RadarSDKMotion.xcframework.zip",
            checksum: "1ad310e61d8fea3c6d03b9ed5c5b5045cd928177f112ac59e8673c429e99b351" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.46.0/RadarSDKIndoors.xcframework.zip",
            checksum: "9981ddb4c40edaaa5a288800b2a57fa118ee73aad21c615b257a55c0555a8b7e" // RadarSDKIndoors checksum
        )
    ]
)
