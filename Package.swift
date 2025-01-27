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
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.0/RadarSDK.xcframework.zip",
            checksum: "964808b927c5ecb5823c7507247562728368a1d270d163e484a0b5976bfd9b4f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.0/RadarSDKMotion.xcframework.zip",
            checksum: "7078ad30c47fb7993944982a3c4db2b12e54d98ae2bef3a32f99c721bd2b6d8c" // RadarSDKMotion checksum
        ),
    ]
)
