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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.2/RadarSDK.xcframework.zip",
            checksum: "235f31c34e9c86934aed0b5cecc6b76fc3fe006c9caeb7b9417b32290e270b9c" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "c70b8e94922c41090101129d385bbf570673e7c1b3f70e5e0b83d2b9be8fe10a" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.1-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "cb953cc548ced510843ed51842f4329fa4f48c3736d17e4d973afd391d30fab5" // RadarSDKIndoors checksum
        )
    ]
)
