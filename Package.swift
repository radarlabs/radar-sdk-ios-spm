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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.1/RadarSDK.xcframework.zip",
            checksum: "e56392a5ce32fdd3a7d4fc2cee118d1b751bd22e4d7d470a9bfdf900beffb3f4" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.1/RadarSDKMotion.xcframework.zip",
            checksum: "6468607aa48293ee2981a0f4b6754c622f62a6002841e19fc38b5926adfe4e7f" // RadarSDKMotion checksum
        )
    ]
)
