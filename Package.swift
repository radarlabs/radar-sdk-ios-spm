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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.1/RadarSDK.xcframework.zip",
            checksum: "aac78dbf8f4ae945d20a55f66622e94aa558b5af4c7d3a87b349f88b9ea04685" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "19600d49d917f68271ea7fca78dc13e7c32a198921a38ff1d853c949ab7a3fd2" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.1/RadarSDKIndoors.xcframework.zip",
            checksum: "3f5e54ba2cce9588a8ee472f55a9b173ed8ca852c38c234926d70c5ac8328634" // RadarSDKIndoors checksum
        )
    ]
)
