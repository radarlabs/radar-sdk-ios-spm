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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.1/RadarSDK.xcframework.zip",
            checksum: "8e46a8d69162836010094eb070e712fca6cde4095c75965dd3a3c8b25b146e7f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.1/RadarSDKMotion.xcframework.zip",
            checksum: "386601a233993aca9289319e010b921219beb2a91a1ea7fbd43053084951a8a2" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.1/RadarSDKIndoors.xcframework.zip",
            checksum: "6c8b9eb236bab2df977fb7bc1a210212aaf3b907a1248cab22adfefbda43986e" // RadarSDKIndoors checksum
        )
    ]
)
